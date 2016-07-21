using UnityEngine;
using System.Collections;

public class QuantityIndicator : MonoBehaviour {

    public string m_resourceName;
    public int m_quantity;

    TextMesh m_textMesh;

	void Start ()
    {
        m_quantity = 0;
        FindTextMesh();
	}
	
	void Update ()
    {
        if(m_textMesh)
        {
            if (!FindTextMesh())
                return;
        }

        m_textMesh.text = "" + m_quantity + "";
	}

    bool FindTextMesh()
    {
        m_textMesh = GetComponent<TextMesh>();
        return m_textMesh != null;
    }
}
