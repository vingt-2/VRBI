using UnityEngine;
using System.Collections;

public class PlayerManager : MonoBehaviour
{

    Player m_playerObject;

    void Start()
    {
        Player[] playerObjects = FindObjectsOfType<Player>();

        if (playerObjects.Length > 1)
        {
            Debug.Log("More than 1 player object in the scene.");
        }
        else if (playerObjects.Length == 0)
        {
            Debug.Log("No player object found");
        }

        m_playerObject = playerObjects[0];
    }

    // Update is called once per frame
    void Update()
    {

        VRControllerManager controlManager = m_playerObject.GetComponentInChildren<VRControllerManager>();

        if (controlManager.m_leftControllerInput && controlManager.m_rightControllerInput)
        {
            DoHandGrabLogic(controlManager.m_leftControllerInput, controlManager.m_rightControllerInput);
            DoHandGrabLogic(controlManager.m_rightControllerInput, controlManager.m_leftControllerInput);
        }
    }

    void DoHandGrabLogic(VRControllerInput currentController, VRControllerInput otherController)
    {
        GameObject controllerObj = currentController.gameObject;
        GameObject otherControllerObj = otherController.gameObject;

        HandsGrabber handGrabber = controllerObj.GetComponentInChildren<HandsGrabber>();
        HandsGrabber otherhandGrabber = otherControllerObj.GetComponentInChildren<HandsGrabber>();

        if (handGrabber.m_collidesWith.Count != 0)
        {
            GameObject grabObj = null;
            foreach (GameObject collideObject in handGrabber.m_collidesWith)
            {
                if (collideObject.GetComponent<GrabableObject>() != null)
                {
                    grabObj = collideObject;
                    break;
                }
            }

            if (grabObj == null)
                return;

            if (currentController.m_triggerButtonState.buttonDown)
            {
                if(otherhandGrabber.m_grabbedObject)
                {
                    otherhandGrabber.OnReleaseObject();
                }
                handGrabber.OnGrabObject(grabObj);
            }
            else if (handGrabber.m_grabbedObject)
            {
                handGrabber.OnReleaseObject();
                
                Rigidbody rgbody = grabObj.GetComponent<Rigidbody>();
                rgbody.AddForce(currentController.m_velocity, ForceMode.Impulse);
                rgbody.AddTorque(currentController.m_angularVelocity, ForceMode.Impulse);
            }
            else
            {
                handGrabber.OnReleaseObject();
            }
        }
        else
        {
            handGrabber.OnReleaseObject();
        }
    }

    void CheckForButtonPush(VRControllerInput currentController)
    {
        GameObject controllerObj = currentController.gameObject;

        HandsGrabber handGrabber = controllerObj.GetComponentInChildren<HandsGrabber>();

        if (handGrabber.m_collidesWith.Count != 0)
        {
            GameObject button = null;
            foreach (GameObject collideObject in handGrabber.m_collidesWith)
            {
                if (collideObject.GetComponent<ButtonObject>() != null)
                {
                    break;
                }
            }
        }
    }
}