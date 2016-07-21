using UnityEngine;
using System.Collections.Generic;

public class RockBuilding : MonoBehaviour
{

    public float m_requiredHitSpeed = 6;

    public float m_probability = 0.3f;

    public GameObject m_rockChunkPrefab;
    public GameObject m_rockChunkParticleSystem;

    void Start()
    {

    }

    void Update()
    {

    }

    public bool OnPickAxeHit(Vector3 positionW, Vector3 velocityW)
    {
        if (velocityW.magnitude > m_requiredHitSpeed)
        {
            // Spawn Particle effect
            Instantiate(m_rockChunkParticleSystem, positionW, Quaternion.LookRotation(-velocityW));

            if (Random.Range(0.0f, 1.0f) < m_probability)
            {
                GameObject newRock = (GameObject)Instantiate(m_rockChunkPrefab, positionW, Random.rotation);
                Vector3 instanceScale = 5 * (Random.insideUnitSphere + new Vector3(1.5f, 1.5f, 1.5f));
                newRock.transform.localScale = instanceScale;
            }

            return true;
        }
        return false;
    }
}
