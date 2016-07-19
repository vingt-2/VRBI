using UnityEngine;
using System.Collections;

public class RockMine : MonoBehaviour
{
	public GameObject m_rockChunkPrefab;

	void Start ()
	{
	
	}
	
	void Update ()
	{
	
	}

	public void OnPickAxeHit(Vector3 positionW)
	{
        Vector3 instanceScale = 10*Random.insideUnitSphere + new Vector3(5f, 5f, 5f);
        
        GameObject newRock = (GameObject) Instantiate(m_rockChunkPrefab, positionW, Random.rotation);
        newRock.transform.localScale = instanceScale;
    }
}
