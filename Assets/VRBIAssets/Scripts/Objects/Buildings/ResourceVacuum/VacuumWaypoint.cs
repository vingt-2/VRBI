using UnityEngine;
using System.Collections;

public class VacuumWaypoint : MonoBehaviour {

    public VacuumBuilding m_parentBuilding;

	void Start ()
    {
	
	}
	
	// Update is called once per frame
	void Update ()
    {
	
	}
    
    void OnTriggerEnter(Collider collider)
    {
        Rigidbody rgbdy = collider.GetComponent<Rigidbody>();

        if(rgbdy != null)
        {
            if(m_parentBuilding != null)
                m_parentBuilding.OnBodyVisitedWaypoint(rgbdy, this);
        }
    }
}
