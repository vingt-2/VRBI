using UnityEngine;
using System.Collections;

public class IndicatorMesh : MonoBehaviour {

    public float m_rotationDt = 2f;
	void Start ()
    {
	}
	
	// Update is called once per frame
	void Update ()
    {
        Vector3 rotation = transform.localRotation.eulerAngles;

        rotation.y += m_rotationDt;
        transform.localRotation = Quaternion.Euler(rotation);
	}
}
