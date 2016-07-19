using UnityEngine;
using System.Collections.Generic;

public class BasketInteriorCollider : MonoBehaviour {

    public List<GameObject> m_collidesWith;

    void Start ()
    {
        m_collidesWith = new List<GameObject>();
    }
	
	// Update is called once per frame
	void Update ()
    {
	    if(!GetComponent<Collider>().isTrigger)
        {
            GetComponent<Collider>().isTrigger = true;
        }
	}
    
    void OnTriggerEnter(Collider otherCollider)
    {
        GameObject gobj = otherCollider.gameObject;
        gobj.GetComponent<Rigidbody>().drag = 10;
        m_collidesWith.Add(otherCollider.gameObject);
    }

    void OnTriggerExit(Collider otherCollider)
    {
        GameObject gobj = otherCollider.gameObject;
        gobj.GetComponent<Rigidbody>().drag = 1;
        m_collidesWith.Remove(gobj);
    }
}
