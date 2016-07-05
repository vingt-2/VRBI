using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour {

    public VRControllerManager m_controllerManager;

	// Use this for initialization
	void Start ()
    {
        m_controllerManager = gameObject.GetComponentInChildren<VRControllerManager>();
	}
	
	// Update is called once per frame
	void Update ()
    {
	    if(m_controllerManager == null)
        {
            Debug.Log("Player script will not find controller manager");
        }
	}
}
