using UnityEngine;
using System.Collections;

public class AutoKillParticleSystem : MonoBehaviour {

	float m_creationTime;
    ParticleSystem m_psystem = null;

	void Start()
	{
		m_creationTime = Time.time;
        FindParticleSystem();
	}
	
	// Update is called once per frame
	void Update ()
    {
	    if(m_psystem == null)
        {
            FindParticleSystem();
            return;
        }

        if(Time.time - m_creationTime > m_psystem.duration)
        {
            Destroy(this.gameObject);
        }
	}

    void FindParticleSystem()
    {
        m_psystem = GetComponent<ParticleSystem>();
    }
}
