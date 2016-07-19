using UnityEngine;
using System.Collections;

public class ResourceObject : MonoBehaviour {

    GameObject m_objectPrefab;

	void Start ()
    {

	}
	
	void Update ()
    {
        if (gameObject.tag != "Resource")
        {
            gameObject.tag = "Resource";
        }


    }
}
