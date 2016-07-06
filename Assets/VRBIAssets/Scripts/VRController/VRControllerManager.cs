using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class VRControllerManager : MonoBehaviour {

    public float m_updateRate = 20;
    public bool m_autoSwitchControllers = false;
    public float m_timeBeforeAutoSwitch = 15;

    public VRControllerInput m_leftControllerInput;
    public VRControllerInput m_rightControllerInput;

    private float m_lastTimeUpdate;
    private float m_switchTime;
    private bool m_switched;

    void Start ()
    {
        m_lastTimeUpdate = 0;
        m_switchTime = 0;
        m_switched = false;

    }
	
	void Update ()
    {
        float time = Time.time;
	    if(time - m_lastTimeUpdate > (1.0f/m_updateRate))
        {

            if(m_autoSwitchControllers)
            {
                if (m_leftControllerInput && m_rightControllerInput)
                    ControllerSwitchLogic(time);
            }
            FindControllerObjects();

            m_lastTimeUpdate = time;
        }
	}
    private void ControllerSwitchLogic(float time)
    {
        bool wasSwitched = m_switched;

        VRControllerInput[] controllerComponents = this.GetComponentsInChildren<VRControllerInput>();

        if (controllerComponents.Length > 2)
        {
            Debug.Log("VRHead: " + this.gameObject + "Has more than two controllers attached");
        }
        else if (controllerComponents.Length == 0)
        {
            return;
        }

        if (controllerComponents[0].gameObject.name.Equals("LeftController"))
        {
            Vector3 right = this.transform.right;

            Vector3 leftPosition = controllerComponents[0].gameObject.transform.position - this.transform.position;
            Vector3 rightPosition = controllerComponents[1].gameObject.transform.position - this.transform.position;

            m_switched = Vector3.Dot(leftPosition, right) > Vector3.Dot(rightPosition, right);

        }
        else if (controllerComponents[0].gameObject.name.Equals("RightController"))
        {
            Vector3 right = this.transform.right;

            Vector3 leftPosition = controllerComponents[1].gameObject.transform.position - this.transform.position;
            Vector3 rightPosition = controllerComponents[0].gameObject.transform.position - this.transform.position;

            m_switched = Vector3.Dot(leftPosition, right) > Vector3.Dot(rightPosition, right);
        }
        else
        {

        }

        if (!wasSwitched && m_switched)
        {
            m_switchTime = time;
        }

        if (m_switched && (time - m_switchTime > m_timeBeforeAutoSwitch))
        {
            if (controllerComponents[0].gameObject.name.Equals("LeftController"))
            {
                controllerComponents[0].gameObject.name = "RightController";
                m_rightControllerInput = controllerComponents[0];
                controllerComponents[1].gameObject.name = "LeftController";
                m_leftControllerInput = controllerComponents[1];
            }
            else if (controllerComponents[0].gameObject.name.Equals("RightController"))
            {
                controllerComponents[1].gameObject.name = "RightController";
                m_rightControllerInput = controllerComponents[1];
                controllerComponents[0].gameObject.name = "LeftController";
                m_leftControllerInput = controllerComponents[0];
            }
            else
            {

            }
        }
    }

    void FindControllerObjects()
    {
        VRControllerInput[] controllerComponents = this.GetComponentsInChildren<VRControllerInput>();

        if (controllerComponents.Length < 2)
            return;

        if (controllerComponents[0].gameObject.name.Equals("LeftController"))
        {
            m_leftControllerInput = controllerComponents[0];
            m_rightControllerInput = controllerComponents[1];
        }
        else
        {
            m_rightControllerInput = controllerComponents[0];
            m_leftControllerInput = controllerComponents[1];
        }
    }
}
