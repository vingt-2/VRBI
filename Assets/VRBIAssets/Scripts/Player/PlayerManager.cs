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

            GameObject leftControllerObj = controlManager.m_leftControllerInput.gameObject;
            GameObject rightControllerObj = controlManager.m_rightControllerInput.gameObject;

            HandsGrabber leftGrabber = leftControllerObj.GetComponentInChildren<HandsGrabber>();
            HandsGrabber rightGrabber = rightControllerObj.GetComponentInChildren<HandsGrabber>();

            if (leftGrabber.m_collidesWith.Count != 0)
            {
                GameObject grabObj = leftGrabber.m_collidesWith[0].gameObject;

                if (controlManager.m_leftControllerInput.m_triggerButtonState.buttonDown)
                {
                    leftGrabber.OnGrabObject(grabObj);

                }
                else if (leftGrabber.m_grabbedObject)
                {
                    leftGrabber.OnReleaseObject();



                    Rigidbody rgbody = grabObj.GetComponent<Rigidbody>();
                    rgbody.AddForce(controlManager.m_leftControllerInput.m_velocity, ForceMode.Impulse);

                    Quaternion q = rgbody.transform.rotation * rgbody.inertiaTensorRotation;
                    Vector3 T = q * Vector3.Scale(rgbody.inertiaTensor, (Quaternion.Inverse(q) * controlManager.m_leftControllerInput.m_angularVelocity));

                    rgbody.AddTorque(10 * controlManager.m_leftControllerInput.m_angularVelocity, ForceMode.VelocityChange);

                }
                else
                {
                    leftGrabber.OnReleaseObject();
                }
            }
            else
            {
                leftGrabber.OnReleaseObject();
            }
        }

        Debug.DrawRay(controlManager.m_leftControllerInput.transform.position, controlManager.m_leftControllerInput.m_angularVelocity.normalized);
    }

    void DoHandGrabLogic(VRControllerInput controllerInput)
    {

        GameObject controllerObj = controllerInput.gameObject;

        HandsGrabber handGrabber = controllerObj.GetComponentInChildren<HandsGrabber>();

        if (handGrabber.m_collidesWith.Count != 0)
        {
            GameObject grabObj = handGrabber.m_collidesWith[0].gameObject;

            if (controllerInput.m_triggerButtonState.buttonDown)
            {
                handGrabber.OnGrabObject(grabObj);
            }
            else if (handGrabber.m_grabbedObject)
            {
                handGrabber.OnReleaseObject();



                Rigidbody rgbody = grabObj.GetComponent<Rigidbody>();
                rgbody.AddForce(controllerInput.m_velocity, ForceMode.Impulse);

                Quaternion q = rgbody.transform.rotation * rgbody.inertiaTensorRotation;
                Vector3 T = q * Vector3.Scale(rgbody.inertiaTensor, (Quaternion.Inverse(q) * controllerInput.m_angularVelocity));

                rgbody.AddTorque(10 * controllerInput.m_angularVelocity, ForceMode.VelocityChange);

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
}