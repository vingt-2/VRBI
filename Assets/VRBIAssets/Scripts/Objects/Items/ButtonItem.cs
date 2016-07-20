using UnityEngine;
using System.Collections;

public class ButtonItem : MonoBehaviour {

    private Collider m_buttonCollider;

    public bool m_isPushed = false;

	void Start ()
    {
        this.FindCollider();
	}
	
	// Update is called once per frame
	void Update ()
    {
	    if(m_buttonCollider == null)
        {
            FindCollider();
            return;
        }

        if(!m_buttonCollider.isTrigger)
        {
            Debug.Log("Collider wasn't set to Trigger, reverted to trigger");
            m_buttonCollider.isTrigger = true;
        }
	}

    void FindCollider()
    {
        Collider[] colliders = this.gameObject.GetComponents<Collider>();

        if (colliders.Length > 1)
            Debug.Log("Too many colliders found for " + this.gameObject);
        else if (colliders.Length < 1)
            Debug.Log("Collider Not found for " + this.gameObject);

        m_buttonCollider = colliders[0];
    }

    void OnTriggerEnter(Collider otherCollider)
    {
        m_isPushed = !m_isPushed;
    }

    void OnTriggerExit(Collider otherCollider)
    {

    }
}
