using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class HandsGrabber : MonoBehaviour {

	public List<GameObject> m_collidesWith;

	public GameObject m_grabbedObject;

    private VRControllerRumble m_controllerRumble;

	void Start ()
	{
		m_collidesWith = new List<GameObject>();

        m_controllerRumble = transform.parent.GetComponentInParent<VRControllerRumble>();
	}
	
	// Update is called once per frame
	void Update ()
	{
	
	}

	void OnTriggerEnter(Collider otherCollider)
	{
        if (m_controllerRumble)
            m_controllerRumble.OnRumble(0.3f, 1);
        m_collidesWith.Add(otherCollider.gameObject);
	}

	void OnTriggerExit(Collider otherCollider)
	{
		m_collidesWith.Remove(otherCollider.gameObject);
	}

	public void OnGrabObject(GameObject obj)
	{
		m_grabbedObject = obj;
		obj.transform.parent = this.transform.parent.parent;
		Rigidbody rgb = obj.GetComponent<Rigidbody>();
		rgb.isKinematic = true;
	}

	public void OnReleaseObject()
	{
		if (!m_grabbedObject)
			return;
		m_grabbedObject.transform.parent = null;
		Rigidbody rgb = m_grabbedObject.GetComponent<Rigidbody>();
		rgb.isKinematic = false;
		m_grabbedObject = null;
	}

}
