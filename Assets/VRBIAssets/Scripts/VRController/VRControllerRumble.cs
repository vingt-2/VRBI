using UnityEngine;
using System.Collections.Generic;

public class VRControllerRumble : MonoBehaviour {

    class RumbleCommand
    {
        public RumbleCommand (float strength) { m_strength = strength; }
        public float m_strength;
    }


    private short m_deviceIndex;

    private Queue<RumbleCommand> m_rumbleCommands;

    void Start ()
    {
        m_rumbleCommands = new Queue<RumbleCommand>();
    }
    
    // Update is called once per frame
    void Update ()
    {
        VRControllerInput controllerInput = GetComponent<VRControllerInput>();
        if(controllerInput)
        {
            m_deviceIndex = controllerInput.m_deviceIndex;
        }

        RumbleCommand rc = m_rumbleCommands.Dequeue();

        SteamVR_Controller.Input(m_deviceIndex).TriggerHapticPulse((ushort)Mathf.Lerp(0, 3999, rc.m_strength), Valve.VR.EVRButtonId.k_EButton_SteamVR_Touchpad);
    }

    public void OnRumble(float strength, float durationInFrames)
    {
        for(uint i = 0; i < durationInFrames; i ++)
        {
            m_rumbleCommands.Enqueue(new RumbleCommand(strength));
        }
    }
}
