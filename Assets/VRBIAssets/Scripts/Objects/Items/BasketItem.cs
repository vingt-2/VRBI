using UnityEngine;
using System.Collections;

public class BasketItem : MonoBehaviour
{
    public BasketInteriorCollider m_basketInteriorCollider;

	void Start ()
    {
        this.FindInteriorCollider();
	}

    void Update()
    {
        if (m_basketInteriorCollider == null)
        {
            this.FindInteriorCollider();
            return;
        }
        
    }

    private void FindInteriorCollider()
    {
        BasketInteriorCollider[] colliders = this.gameObject.GetComponentsInChildren<BasketInteriorCollider>();
        if (colliders.Length > 1)
            Debug.Log("More than one basket interior collider on object:" + gameObject);
        else if(colliders.Length < 1)
            Debug.Log("Cannot find basket interior collider:" + gameObject);

        m_basketInteriorCollider = colliders[0];
    }
}
