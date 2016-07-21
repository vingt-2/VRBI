using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class VacuumBuilding : MonoBehaviour
{
    public PlayerResourceManager m_resourceManager;
    public float m_dragModifier;

    List<VacuumWaypoint> m_waypointsNearToFar;
    VacuumEntry m_vacuumEntry;
    Collider m_selfCollider;
    Hashtable m_bodies;
    Hashtable m_originalDrag;

    void Start ()
    {
        m_bodies = new Hashtable();
        m_originalDrag = new Hashtable();
        m_selfCollider = GetComponent<Collider>();
        m_waypointsNearToFar = new List<VacuumWaypoint>();
        FindVacuumWaypoints();
        FindVacuumEntry();
    }

	void Update ()
    {
        if (m_selfCollider == null)
            Debug.Log("VacuumBuilding Requires trigger Collider");

        m_selfCollider.isTrigger = true;

	    if(m_vacuumEntry == null)
        {
            if (FindVacuumEntry())
                return;
        }

        if(m_waypointsNearToFar.Count == 0)
        {
            FindVacuumWaypoints();
        }

        foreach(Rigidbody rgbody in m_bodies.Keys)
        {
            if(rgbody == null)
            {
                m_bodies.Remove(rgbody);
                continue;
            }
            VacuumWaypoint wp = m_waypointsNearToFar[(int)m_bodies[rgbody]];
            Vector3 toEntry = wp.transform.position - m_vacuumEntry.transform.position;
            Vector3 relativePosW = (wp.transform.position - rgbody.transform.position);
            rgbody.AddForce(relativePosW.normalized / relativePosW.sqrMagnitude);
        }
	}

    public void OnBodyVisitedWaypoint(Rigidbody body, VacuumWaypoint waypoint)
    {
        int wpIndx = m_waypointsNearToFar.IndexOf(waypoint);
        if (wpIndx > 0 && wpIndx <= (int)m_bodies[body])
        {
            try
            {
                m_bodies[body] = wpIndx - 1;
            }
            catch
            {
                Debug.Log("Doesnt find body in body map");
            }
        }
    }

    public void OnBodyVacuumed(Rigidbody body)
    {
        ResourceObject resource = body.GetComponent<ResourceObject>();

        if (resource != null)
        {
            m_resourceManager.OnAddResource(resource);
        }
        m_bodies.Remove(body);
        Destroy(body.gameObject);
    }

    void OnTriggerEnter(Collider collider)
    {
        Rigidbody rgbdy = collider.GetComponent<Rigidbody>();
        if (rgbdy != null)
        {
            Addbody(rgbdy);
        }
    }

    void OnTriggerExit(Collider collider)
    {
        Rigidbody rgbdy = collider.GetComponent<Rigidbody>();

        if (rgbdy != null)
        {
            RemoveBody(rgbdy);
        }
    }

    void Addbody(Rigidbody rgbdy)
    {
        if (!rgbdy.GetComponent<ResourceObject>())
            return;
        int targetWp = m_waypointsNearToFar.Count;
        for (int i = 0; i < m_waypointsNearToFar.Count; i++)
        {
            VacuumWaypoint wp = m_waypointsNearToFar[i];

            float entryToWp = (m_vacuumEntry.transform.position - wp.transform.position).sqrMagnitude;
            float entryToObj = (m_vacuumEntry.transform.position - rgbdy.transform.position).sqrMagnitude;

            if (entryToObj < entryToWp)
            {
                targetWp = i;
                break;
            }
        }
        if (targetWp != 0)
        {
            m_originalDrag.Add(rgbdy, rgbdy.drag);
            rgbdy.drag = m_dragModifier;
            rgbdy.useGravity = false;
            m_bodies.Add(rgbdy, targetWp - 1);
        }
    }

    void RemoveBody(Rigidbody rgbdy)
    {
        rgbdy.drag = (float) m_originalDrag[rgbdy];
        rgbdy.useGravity = true;
        m_originalDrag.Remove(rgbdy);
        m_bodies.Remove(rgbdy);
    }

    int FindVacuumWaypoints()
    {
        if(m_vacuumEntry == null)
        {
            return 0;
        }

        VacuumWaypoint[] waypointsArray = GetComponentsInChildren<VacuumWaypoint>();

        while(m_waypointsNearToFar.Count < waypointsArray.Length)
        {
            float minDist = float.MaxValue;
            VacuumWaypoint minWp = null;
            foreach (VacuumWaypoint wp in waypointsArray)
            {
                if(!m_waypointsNearToFar.Contains(wp))
                {
                    float distToEntry = (wp.transform.position - m_vacuumEntry.transform.position).sqrMagnitude;

                    if(distToEntry < minDist)
                    {
                        minDist = distToEntry;
                        minWp = wp;
                    }
                }
            }

            minWp.m_parentBuilding = this;
            m_waypointsNearToFar.Add(minWp);
        }

        return m_waypointsNearToFar.Count;
    }

    bool FindVacuumEntry()
    {
        m_vacuumEntry = GetComponentInChildren<VacuumEntry>();

        if (m_vacuumEntry != null)
        {
            m_vacuumEntry.m_parentBuilding = this;
            return true;
        }
        else
        {
            return false;
        }
    }
}
