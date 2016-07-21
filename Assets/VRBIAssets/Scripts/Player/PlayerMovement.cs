using UnityEngine;
using System.Collections;

public class PlayerMovement : MonoBehaviour {

    private PlayerController m_leftPlayerController;
    private VRControllerInput m_leftInputs;
    private Transform m_playerHeadTransform;
    public bool m_requireTrackPadPress = true;
    public float m_speedMultiplier = 0.025f;

	void Start ()
    {
        FindLeftController();
        FindPlayerHead();
    }
	
	void Update ()
    {
	    if(m_leftPlayerController == null || m_leftInputs == null)
        {
            if(!FindLeftController())
            {
                return;
            }
        }
        
        if(m_playerHeadTransform == null)
        {
            if(!FindPlayerHead())
            {
                return;
            }
        }

        Vector2 touchPad = m_leftInputs.m_touchPadCoords;

        if(touchPad.magnitude > 0.05f)
        {
            if(!m_requireTrackPadPress || m_leftInputs.m_touchpadButtonState.buttonDown)
                transform.localPosition += m_speedMultiplier * Vector3.ProjectOnPlane(m_playerHeadTransform.TransformDirection(new Vector3(touchPad.x, 0, touchPad.y)),new Vector3(0,1,0)).normalized;
        }
	}

    bool FindPlayerHead()
    {
        Camera camera = GetComponentInChildren<Camera>();
        if(camera != null)
        {
            m_playerHeadTransform = camera.transform;

            if (m_playerHeadTransform)
                return true;
        }
        return false;
    }

    bool FindLeftController()
    {
        PlayerController[] controllers = GetComponentsInChildren<PlayerController>();

        foreach(PlayerController pcontroller in controllers)
        {
            if(pcontroller.m_controllerSide == "Left")
            {
                m_leftPlayerController = pcontroller;
                m_leftInputs = m_leftPlayerController.GetComponent<VRControllerInput>();
                if(m_leftInputs != null)
                    return true;
            }
        }
        return false;
    }
}
