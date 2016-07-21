using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class InventoryPanel : MonoBehaviour
{
    public PlayerResourceManager m_resourceManager;

    List<QuantityIndicator> m_inventoryQuantities;

    void Start ()
    {
        m_inventoryQuantities = new List<QuantityIndicator>();
        FindQuantityIndicators();
    }
	
	void Update ()
    {
	    if(m_inventoryQuantities.Count == 0)
        {
            FindQuantityIndicators();
        }

        foreach(string resource in m_resourceManager.m_inventory.Keys)
        {
            foreach(QuantityIndicator indicator in m_inventoryQuantities)
            {
                if(indicator.m_resourceName.Equals(resource))
                {
                    indicator.m_quantity = m_resourceManager.m_inventory[resource];
                }
            }
        }

	}

    int FindQuantityIndicators()
    {
        QuantityIndicator[] indicators = GetComponentsInChildren<QuantityIndicator>();

        foreach(QuantityIndicator indc in indicators)
        {
            m_inventoryQuantities.Add(indc);
        }

        return m_inventoryQuantities.Count;
    }
}
