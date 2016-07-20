using UnityEngine;
using System.Collections.Generic;

public class BasketInteriorCollider : MonoBehaviour {

    public List<GameObject> m_collidesWith;

    public BasketItem m_parentBasket;

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

        if (m_parentBasket && gobj.GetComponent<GrabableObject>())
        {
            gobj.transform.parent = m_parentBasket.transform;
        }
        m_collidesWith.Add(otherCollider.gameObject);
    }

    void OnTriggerExit(Collider otherCollider)
    {
        GameObject gobj = otherCollider.gameObject;
        if (m_parentBasket && gobj.GetComponent<GrabableObject>())
        {
            gobj.transform.parent = null;
        }
        m_collidesWith.Remove(gobj);
    }
}
