using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawner : MonoBehaviour
{    
    public GameObject deerPrefab; // Reference to the deer prefab
    public GameObject rabbitPrefab; // Reference to the rabbit prefab
    public GameObject bearPrefab; // Reference to the rabbit prefab
    public Transform spawnLocation; // Reference to the spawn location


    void Update()
    {
        // Check if the "L" key is pressed
        if (Input.GetKeyDown(KeyCode.L))
        {
            //Controls the size of the animals
            float d_size = Random.Range(0.5f,2.0f); // The size of the spawner object
            
            float r_size = Random.Range(0.25f,0.5f); // The size of the spawner object


            //DEER
            // Calculate a random position within a 5 by 5 area around the spawner object
            Vector3 randomPosition_1 = spawnLocation.position + new Vector3(Random.Range(-5f, 5f), 0, Random.Range(-5f, 5f));

            // Instantiate the deer prefab at the random position
            GameObject spawnedDeer = Instantiate(deerPrefab, randomPosition_1, spawnLocation.rotation);

            // Apply the random size to the spawned deer prefab
            spawnedDeer.transform.localScale = new Vector3(d_size, d_size, d_size);



            //RABBIT
            //random position for rabbit
            Vector3 randomPosition_2 = spawnLocation.position + new Vector3(Random.Range(-5f, 5f), 0, Random.Range(-5f, 5f));
            // Instantiate the deer prefab at the random position
            GameObject spawnedRabbit = Instantiate(rabbitPrefab, randomPosition_2, spawnLocation.rotation);

            // Apply the random size to the spawned deer prefab
            spawnedRabbit.transform.localScale = new Vector3(r_size, r_size, r_size);


            //BEAR
            //random position for rabbit
            Vector3 randomPosition_3 = spawnLocation.position + new Vector3(Random.Range(-5f, 5f), 0, Random.Range(-5f, 5f));
            // Instantiate the deer prefab at the random position
            GameObject spawnedBear = Instantiate(bearPrefab, randomPosition_3, spawnLocation.rotation);

            // Apply the random size to the spawned deer prefab
            spawnedBear.transform.localScale = new Vector3(r_size, r_size, r_size);
        }
    }
}
