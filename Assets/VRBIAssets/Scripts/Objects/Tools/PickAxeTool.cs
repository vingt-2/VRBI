﻿using UnityEngine;
using System.Collections;

public class PickAxeTool : MonoBehaviour
{
    public float m_speedThreshold;

    public GameObject m_pickAxeHit;

    private PickAxeCollider m_collider;

    private float m_collideTime = 0;

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
    }

    public void OnCollide(GameObject gobj)
    {
        VelocityEstimator velEst = m_collider.GetComponent<VelocityEstimator>();

        if (!velEst)
        {
            Debug.Log("Could not find Velocity Estimator for pick axe collider");
            return;
        }
        GameObject parent = null;
        try
        {
            parent = transform.parent.gameObject;
        } catch
        {
            Debug.Log("PickAxe has no parent transform (Can't rumble)");
        }

        if (parent && parent.GetComponent<VRControllerRumble>())
        {
            parent.GetComponent<VRControllerRumble>().OnRumble(0.2f, 5);
        }

        if (velEst.m_velocity.magnitude > m_speedThreshold)
        {
            m_pickAxeHit = gobj;
            m_collideTime = Time.time;

            if (gobj.GetComponent<RockBuilding>())
            {
                bool successHit = gobj.GetComponent<RockBuilding>().OnPickAxeHit(m_collider.transform.position, velEst.m_velocity);

                if (successHit && parent && parent.GetComponent<VRControllerRumble>())
                {
                    parent.GetComponent<VRControllerRumble>().OnRumble(1, 10);
                }
            }
        }
    }

    void FindCollider()
    {
        m_collider = GetComponentInChildren<PickAxeCollider>();
        m_collider.m_parentPickAxeTool = this;
    }
}
