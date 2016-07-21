using UnityEngine;
using System.Collections;

public class VacuumEntry : MonoBehaviour {

    public VacuumBuilding m_parentBuilding;
	void Start () {}
	
	void Update () {}

    void OnTriggerEnter(Collider otherCollider)
    {
        Rigidbody rgboby = otherCollider.GetComponent<Rigidbody>();

        if (rgboby != null)
        {
            m_parentBuilding.OnBodyVacuumed(rgboby);
        }
    }
}
