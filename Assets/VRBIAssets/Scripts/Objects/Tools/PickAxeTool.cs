using UnityEngine;
using System.Collections;

public class PickAxeTool : MonoBehaviour
{
    public float m_speedThreshold;
    public GameObject m_pickAxeHit;

    private PickAxeCollider m_collider;
    private float m_collideTime = 0;
    private float m_lastTime = 0;

    void Start ()
    {
        FindCollider();
        m_pickAxeHit = null;
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (!m_collider)
        {
            FindCollider();
            return;
        }

        float currentTime = Time.time;
        if(currentTime - m_collideTime > 1)
        {
            m_collideTime = 0;
            m_pickAxeHit = null;
        }
        m_lastTime = currentTime;
    }

    public void OnCollide(GameObject gobj)
    {
        VelocityEstimator velEst = m_collider.GetComponent<VelocityEstimator>();

        if (!velEst)
        {
            Debug.Log("Could not find Velocity Estimator for pick axe collider");
            return;
        }
        
        if(velEst.m_velocity.magnitude > m_speedThreshold)
        {
            m_pickAxeHit = gobj;
            m_collideTime = Time.time;

            if (gobj.GetComponent<RockMine>())
                gobj.GetComponent<RockMine>().OnPickAxeHit(m_collider.transform.position);
        }
    }

    void FindCollider()
    {
        m_collider = GetComponentInChildren<PickAxeCollider>();
        m_collider.m_parentPickAxeTool = this;
    }
}
