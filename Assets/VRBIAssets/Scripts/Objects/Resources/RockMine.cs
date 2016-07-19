using UnityEngine;
using System.Collections.Generic;

public class RockMine : MonoBehaviour
{
	public GameObject m_rockChunkPrefab;
	public GameObject m_rockChunkParticleSystem;

	void Start ()
	{

	}
	
	void Update ()
	{

	}

	public void OnPickAxeHit(Vector3 positionW, Vector3 velocityW)
	{
		Vector3 instanceScale = 5*(Random.insideUnitSphere+ new Vector3(1.5f, 1.5f, 1.5f));

		Instantiate(m_rockChunkParticleSystem, positionW, Quaternion.LookRotation(-velocityW));

		GameObject newRock = (GameObject) Instantiate(m_rockChunkPrefab, positionW, Random.rotation);
		newRock.transform.localScale = instanceScale;
	}
}
