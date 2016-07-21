using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PlayerResourceManager : MonoBehaviour {

    public Dictionary<string, int> m_inventory;
    VacuumBuilding m_vacuumBuilding;
	
	void Start ()
    {
        m_inventory = new Dictionary<string, int>();
        m_vacuumBuilding = FindObjectOfType<VacuumBuilding>();   
        if(m_vacuumBuilding != null)
        {
            m_vacuumBuilding.m_resourceManager = this;
        }
	}
	
	
	void Update ()
    {
	
	}

    public void OnAddResource(ResourceObject resource)
    {
        try
        {
            m_inventory[resource.m_resourceName] ++;
        }
        catch
        {
            m_inventory.Add(resource.m_resourceName, 1);
        }
    }
}
