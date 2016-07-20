using UnityEngine;
using System.Collections.Generic;

public class VRControllerInput : MonoBehaviour
{
    public const float EPSILON = 0.0001f;

    public class ButtonState
    {
        public bool buttonDown = false;
        public bool buttonReleased = false;
        public bool lastState = false;
    };

    public class TouchState
    {
        public Vector2 cartesianCoords;

        public float radius, angle;
    }

    public float m_touchPadAngle = 0;
    public float m_touchPadRadius = 0;

    public List<GameObject> m_exposedButtonStates;

    public ButtonState m_triggerButtonState;

    public ButtonState m_gripButtonState;

    public ButtonState m_touchpadButtonState;

    public ButtonState m_menuButtonState;

    public TouchState m_touchState;

    public float m_updateRateHZ = 60f;

    public short m_deviceIndex;

    private float m_lastTime;

    void Start()
    {
        m_triggerButtonState = new ButtonState();
        m_gripButtonState = new ButtonState();
        m_touchpadButtonState = new ButtonState();
        m_menuButtonState = new ButtonState();
        m_touchState = new TouchState();
    }

    void GetDeviceIndex()
    {
        SteamVR_TrackedObject steamVRtrackObjectCmpnt;
        steamVRtrackObjectCmpnt = GetComponent<SteamVR_TrackedObject>();

        if (steamVRtrackObjectCmpnt)
        {
            m_deviceIndex = (short)steamVRtrackObjectCmpnt.index;
        }
        else
        {
            Debug.Log("This VRControllerInput is not paired with a SteamVR_TrackedObject");
        }

    }

    void UpdateButtonState(ButtonState state, bool newState)
    {
        state.lastState = state.buttonDown;
        state.buttonDown = newState;
        state.buttonReleased = state.lastState && !state.buttonDown;
    }

    void UpdateTouchState(TouchState touchState, Vector2 coords)
    {
        touchState.cartesianCoords = coords;

        touchState.radius = coords.magnitude;

        float dotV = Vector2.Dot(coords, new Vector2(1, 0));
        if (touchState.radius > EPSILON)
            touchState.angle = coords.y > 0 ? Mathf.Acos(dotV) : 2 * Mathf.PI - Mathf.Acos(dotV);
        else
            touchState.angle = 0;
    }

    void UpdateExposedStateObject(VRExposedButtonState exposedState)
    {
        if (exposedState.m_buttonName.Equals("Trigger"))
        {
            exposedState.m_buttonDown = m_triggerButtonState.buttonDown;
            exposedState.m_buttonReleased = m_triggerButtonState.buttonReleased;
        }
        else if (exposedState.m_buttonName.Equals("Touchpad"))
        {
            exposedState.m_buttonDown = m_touchpadButtonState.buttonDown;
            exposedState.m_buttonReleased = m_touchpadButtonState.buttonReleased;
        }
        else if (exposedState.m_buttonName.Equals("Grip"))
        {
            exposedState.m_buttonDown = m_gripButtonState.buttonDown;
            exposedState.m_buttonReleased = m_gripButtonState.buttonReleased;
        }
        else if (exposedState.m_buttonName.Equals("Menu"))
        {
            exposedState.m_buttonDown = m_menuButtonState.buttonDown;
            exposedState.m_buttonReleased = m_menuButtonState.buttonReleased;
        }
        else
        {
            Debug.Log("Invalid Button name. Only: \"Trigger\",\"Touchpad\",\"Grip\",\"Menu\"" + exposedState.m_buttonName);
        }
    }

    // Update is called once per frame
    void Update()
    {
        float currentTime = Time.time;
        if (currentTime - m_lastTime < (1 / m_updateRateHZ))
        {
            return;
        }

        GetDeviceIndex();

        bool trigger = SteamVR_Controller.Input(m_deviceIndex).GetPress(SteamVR_Controller.ButtonMask.Trigger);

        bool touchPad = SteamVR_Controller.Input(m_deviceIndex).GetPress(SteamVR_Controller.ButtonMask.Touchpad);

        bool gripButton = SteamVR_Controller.Input(m_deviceIndex).GetPress(SteamVR_Controller.ButtonMask.Grip);

        bool menuButton = SteamVR_Controller.Input(m_deviceIndex).GetPress(SteamVR_Controller.ButtonMask.ApplicationMenu);

        Vector2 touchCoordsCart = SteamVR_Controller.Input(m_deviceIndex).GetAxis(Valve.VR.EVRButtonId.k_EButton_Axis0);

        UpdateButtonState(m_triggerButtonState, trigger);
        UpdateButtonState(m_touchpadButtonState, touchPad);
        UpdateButtonState(m_gripButtonState, gripButton);
        UpdateButtonState(m_menuButtonState, menuButton);

        UpdateTouchState(m_touchState, touchCoordsCart);

        m_touchPadAngle = 180 * m_touchState.angle / Mathf.PI;
        m_touchPadRadius = m_touchState.radius;

        if(m_exposedButtonStates.Count > 0)
        {
            foreach (GameObject gObject in m_exposedButtonStates)
            {
                VRExposedButtonState buttonStateComponent = gObject.GetComponent<VRExposedButtonState>();
                if (buttonStateComponent)
                {
                    UpdateExposedStateObject(buttonStateComponent);
                }
            }
        }
        else
        {
            FindExposedStatesObjects();
        }

        m_lastTime = currentTime;
    }

    void FindExposedStatesObjects()
    {
        VRExposedButtonState[] exposedObjs = this.GetComponentsInChildren<VRExposedButtonState>();

        m_exposedButtonStates = new List<GameObject>();
        foreach (VRExposedButtonState obj in exposedObjs)
        {
            m_exposedButtonStates.Add(obj.gameObject);
        }
    }
}
