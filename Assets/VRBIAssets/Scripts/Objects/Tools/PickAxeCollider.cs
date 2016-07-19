using UnityEngine;
using System.Collections;

public class PickAxeCollider : MonoBehaviour
{
    public PickAxeTool m_parentPickAxeTool;

	// Use this for initialization
	void Start ()
    {
	
	}
	
	// Update is called once per frame
	void Update ()
    {
	    if(GetComponent<Collider>())
        {
            GetComponent<Collider>().isTrigger = true;
        }
	}

    void OnTriggerEnter(Collider otherCollider)
    {
        m_parentPickAxeTool.OnCollide(otherCollider.gameObject);
    }
}
