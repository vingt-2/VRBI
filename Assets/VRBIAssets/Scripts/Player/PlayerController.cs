using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour
{

    public string m_controllerSide = "unidentified";

    public string m_equipStatus = "Hand";

    public GameObject m_equippedObject;

    public GameObject m_prefabHandObject;

    private PlayerController m_otherController;

    private VRControllerInput m_controllerInput;

    private float m_lastEquipTime;

    void Start()
    {
        m_equippedObject = (GameObject)Instantiate(m_prefabHandObject, transform.TransformPoint(Vector3.zero), Quaternion.identity);
        m_equippedObject.transform.parent = this.transform;

        m_controllerInput = GetComponent<VRControllerInput>();
    }


    void Update()
    {
        if (m_otherController == null)
        {
            FindOtherController();
        }

        if (m_equippedObject == null)
        {
            InstanciateAndEquipHands();
        }

        if (m_equipStatus == "Hand")
        {
            HandLogic();
        }
        else
        {
            if(m_controllerInput.m_gripButtonState.buttonDown)
            {
                if(Time.time - m_lastEquipTime > 1)
                ReleaseEquipped();
            }
        }
    }

    void FindOtherController()
    {
        PlayerController[] pcontrollers = transform.parent.GetComponentsInChildren<PlayerController>();
        foreach (PlayerController pc in pcontrollers)
        {
            if (pc != this)
                m_otherController = pc;
        }
        if (m_otherController == null)
            Debug.Log("Could not find other Controller");
    }

    void InstanciateAndEquipHands()
    {
        if (m_equippedObject != null)
        {
            Destroy(m_equippedObject.gameObject);
        }

        m_equipStatus = "Hand";
        m_equippedObject = (GameObject) Instantiate(m_prefabHandObject, transform.TransformPoint(Vector3.zero), transform.rotation);
        m_equippedObject.transform.parent = this.transform;

        m_lastEquipTime = Time.time;
    }

    void EquipObject(GameObject gobject)
    {
        if (m_equippedObject != null)
        {
            Destroy(m_equippedObject.gameObject);
        }

        m_equipStatus = "other";
        m_equippedObject = gobject;
        gobject.transform.localPosition = Vector3.zero;
        gobject.transform.rotation = transform.rotation;
        gobject.transform.parent = this.transform;

        m_lastEquipTime = Time.time;
    }

    void ReleaseEquipped()
    {
        if (m_equippedObject == null)
        {
            return;
        }

        m_equippedObject.transform.parent = null;

        Rigidbody rgbdy = m_equippedObject.GetComponent<Rigidbody>();
        if (rgbdy != null)
        {
            rgbdy.isKinematic = false;
        }
        
        m_equippedObject = null;
    }

    void HandLogic()
    {
        HandsGrabber handGrabber = GetComponentInChildren<HandsGrabber>();

        HandsGrabber otherhandGrabber = null;
        if (m_otherController)
            otherhandGrabber = m_otherController.GetComponentInChildren<HandsGrabber>();

        if (handGrabber.m_collidesWith.Count != 0)
        {
            GameObject grabObj = null;
            foreach (GameObject collideObject in handGrabber.m_collidesWith)
            {
                if(collideObject == null)
                {
                    handGrabber.m_collidesWith.Remove(collideObject);
                    break;
                }

                if (collideObject.GetComponent<GrabableObject>() != null)
                {
                    grabObj = collideObject;
                    break;
                }
            }

            if (grabObj == null)
                return;

            if (handGrabber.m_grabbedObject == null)
            {
                if (m_controllerInput.m_triggerButtonState.buttonDown)
                {
                    // Release from other hand if already grabbing this object
                    if (otherhandGrabber && otherhandGrabber.m_grabbedObject == grabObj)
                    {
                        otherhandGrabber.OnReleaseObject();
                    }

                    handGrabber.OnGrabObject(grabObj);
                }
                else
                {
                    handGrabber.OnReleaseObject();
                }
            }
            else
            {
                if (m_controllerInput.m_gripButtonState.buttonDown)
                {
                    EquipObject(handGrabber.m_grabbedObject);
                }

                if (!m_controllerInput.m_triggerButtonState.buttonDown)
                {
                    // Release object if stopped pressing Trigger button
                    handGrabber.OnReleaseObject();

                    Rigidbody rgbody = grabObj.GetComponent<Rigidbody>();
                    VelocityEstimator velEst = GetComponent<VelocityEstimator>();

                    rgbody.AddForce(velEst.m_velocity, ForceMode.Impulse);
                    rgbody.AddTorque(velEst.m_angularVelocity, ForceMode.Impulse);
                }
            }
        }
        else
        {
            handGrabber.OnReleaseObject();
        }
    }

}
