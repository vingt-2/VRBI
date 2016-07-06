using UnityEngine;
using System.Collections;

public class GrabableObject : MonoBehaviour
{

    public Collider m_collider;

	void Start ()
    {
        m_collider = GetComponent<Collider>();
	}
	
	// Update is called once per frame
	void Update ()
    {
	    
	}
}
