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

        Debug.DrawRay(controlManager.m_leftControllerInput.transform.position, controlManager.m_leftControllerInput.m_angularVelocity.normalized);
    }

    void DoHandGrabLogic(VRControllerInput currentController, VRControllerInput otherController)
    {
        GameObject controllerObj = currentController.gameObject;

        HandsGrabber handGrabber = controllerObj.GetComponentInChildren<HandsGrabber>();

        if (handGrabber.m_collidesWith.Count != 0)
        {
            GameObject grabObj = handGrabber.m_collidesWith[0].gameObject;

            if (currentController.m_triggerButtonState.buttonDown)
            {
                handGrabber.OnGrabObject(grabObj);
            }
            else if (handGrabber.m_grabbedObject)
            {
                handGrabber.OnReleaseObject();
                
                Rigidbody rgbody = grabObj.GetComponent<Rigidbody>();
                rgbody.AddForce(currentController.m_velocity, ForceMode.VelocityChange);
                rgbody.AddTorque(currentController.m_angularVelocity, ForceMode.VelocityChange);
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