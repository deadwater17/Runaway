using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeerSpawner : MonoBehaviour
{
    public GameObject deerPrefab; // Reference to the deer prefab
    public Transform spawnLocation; // Reference to the spawn location


    void Update()
    {
        // Check if the "L" key is pressed
        if (Input.GetKeyDown(KeyCode.L))
        {
            float size = Random.Range(0.5f,1.5f); // The size of the spawner object

            // Calculate a random position within a 5 by 5 area around the spawner object
            Vector3 randomPosition = spawnLocation.position + new Vector3(Random.Range(-5f, 5f), 0, Random.Range(-5f, 5f));

            // Instantiate the deer prefab at the random position
            GameObject spawnedDeer = Instantiate(deerPrefab, randomPosition, spawnLocation.rotation);

            // Apply the random size to the spawned deer prefab
            spawnedDeer.transform.localScale = new Vector3(size, size, size);
        }
    }
}
