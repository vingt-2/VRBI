using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class VelocityEstimator : MonoBehaviour {

	float EPSILON = 0.0001f;

	public Vector3 m_velocity;

	public Vector3 m_angularVelocity;

	[Range(2, 10)]
	public int m_velocitySmoothing = 2;

	private float m_lastTime = 0;

	private Queue<Vector3> m_previousPositions;

	private Queue<Vector3> m_previousRotations;

	private Queue<float> m_previousDeltaTs;
	void Start ()
	{
		m_previousPositions = new Queue<Vector3>();
		m_previousRotations = new Queue<Vector3>();
		m_previousDeltaTs = new Queue<float>();
	}
	
	// Update is called once per frame
	void Update ()
	{
		float currentTime = Time.time;
		ComputeVelocity(currentTime);
		m_lastTime = currentTime;
	}

	void ComputeVelocity(float time)
	{
		float deltaT = time - m_lastTime;

		m_velocity = Vector3.zero;
		m_angularVelocity = Vector3.zero;


		while (m_previousPositions.Count > m_velocitySmoothing)
		{
			m_previousPositions.Dequeue();
			m_previousDeltaTs.Dequeue();
			m_previousRotations.Dequeue();
		}
		m_previousPositions.Enqueue(transform.position);
		m_previousRotations.Enqueue(transform.forward);
		m_previousDeltaTs.Enqueue(deltaT);

		if (m_previousPositions.Count < m_velocitySmoothing)
			return;

		Vector3[] posArray = m_previousPositions.ToArray();
		Vector3[] rotArray = m_previousRotations.ToArray();
		float[] deltArray = m_previousDeltaTs.ToArray();

		for (int i = 0; i < m_velocitySmoothing - 1; i++)
		{
			m_velocity += (posArray[i + 1] - posArray[i]) / deltArray[i];

			Vector3 x = Vector3.Cross(rotArray[i].normalized, rotArray[i + 1].normalized);

			if (x.sqrMagnitude > EPSILON)
				m_angularVelocity += x / deltArray[i];
		}

		m_velocity /= m_velocitySmoothing;
		m_angularVelocity /= m_velocitySmoothing;

		if (m_velocity.sqrMagnitude < EPSILON)
			m_velocity = Vector3.zero;

	}
}
