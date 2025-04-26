using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimalSpawn : MonoBehaviour
{
    public GameObject[] animalPrefabs;
    public float spawnRadius = 100f;
    public int MaxspawnCount = 10;
    public float respawntime = 3f;
    
    private List<GameObject> spawnList = new List<GameObject>();
    public Transform player;
    void Start()
    {
        player = player.GetComponent<Transform>();
        StartCoroutine(SpawnRoutine());
    }

    IEnumerator SpawnRoutine()
    {
        while(true)
        {
            ManageAnimals();
            yield return new WaitForSeconds(respawntime);
        }
    }

    void ManageAnimals()
    {
        int currentAnimal = 0;
        foreach (var animal in spawnList)
        {
            if (Vector3.Distance(animal.transform.position, player.position) < spawnRadius)
            {
                currentAnimal++;
            }
        }

        if (currentAnimal < MaxspawnCount)
        {
            spawnAnimal();
        }

        for(int i = 0;i<spawnList.Count;i++)
        {
            if (Vector3.Distance(spawnList[i].transform.position, player.position) > spawnRadius)
            {
                Destroy(spawnList[i]);
                spawnList.RemoveAt(i);
            }
        }
    }

    void spawnAnimal()
    {
        Vector3 spawnPos = Vector3.zero;
        RaycastHit hit;
        Ray ray;
        //do
        //{
        //    float randomRangeX = Random.Range(-spawnRadius, spawnRadius);
        //    float randomRangeZ = Random.Range(-spawnRadius, spawnRadius);
        //    spawnPos = player.position + new Vector3((randomRangeX), 0, randomRangeZ);
        //    spawnPos.y = Terrain.activeTerrain.SampleHeight(spawnPos);
        //    ray = new Ray(new Vector3(spawnPos.x, spawnPos.y + 100f, spawnPos.z), Vector3.down);

        //} while (!Physics.Raycast(ray, out hit, 200f) || !(hit.collider is TerrainCollider));
        //GameObject animal = animalPrefabs[Random.Range(0, animalPrefabs.Length)];
        //GameObject newAnimal = Instantiate(animal,spawnPos,Quaternion.identity);
        //spawnList.Add(newAnimal);
        int tryCount = 0;
        int maxTry = 20;
        while (tryCount < maxTry)
        {
            float randomRangeX = Random.Range(-spawnRadius, spawnRadius);
            float randomRangeZ = Random.Range(-spawnRadius, spawnRadius);
            spawnPos = player.position + new Vector3(randomRangeX, 0, randomRangeZ);
            spawnPos.y = Terrain.activeTerrain.SampleHeight(spawnPos);
            ray = new Ray(new Vector3(spawnPos.x, spawnPos.y + 100f, spawnPos.z), Vector3.down);

            if (Physics.Raycast(ray, out hit, 200f))
            {
                Debug.Log("Trying to spawn at position: " + spawnPos);
                
                if (hit.collider.GetComponent<TerrainCollider>() != null)
                {
                    Debug.Log("Trying to spawn at position: " + spawnPos);
                    GameObject animal = animalPrefabs[Random.Range(0, animalPrefabs.Length)];
                    GameObject newAnimal = Instantiate(animal, spawnPos, Quaternion.identity);
                    spawnList.Add(newAnimal);
                    return;
                }
            }
            tryCount++;
        }

        Debug.LogWarning("Animal spawn failed: Couldn't find valid terrain after " + maxTry + " tries.");
    }
}
