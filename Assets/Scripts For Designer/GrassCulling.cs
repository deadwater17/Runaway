using UnityEngine;
using System.Collections.Generic;

public class GrassCulling : MonoBehaviour
{
    public Terrain terrain;
    public int[] grassPrototypeIndexes = { 3, 4, 5 }; // Grass prototype indexes
    public float cullDistance = 50f; // Distance at which grass stops rendering

    void Update()
    {
        RemoveGrassOutsideDistance();
    }

    void RemoveGrassOutsideDistance()
    {
        TerrainData terrainData = terrain.terrainData;
        List<TreeInstance> newTrees = new List<TreeInstance>();
        Vector3 playerPos = transform.position;
        float sqrCullDist = cullDistance * cullDistance;

        foreach (TreeInstance tree in terrainData.treeInstances)
        {
            Vector3 worldTreePos = Vector3.Scale(tree.position, terrainData.size) + terrain.transform.position;

            // Check if this tree is a grass prototype
            bool isGrass = false;
            foreach (int grassIndex in grassPrototypeIndexes)
            {
                if (tree.prototypeIndex == grassIndex)
                {
                    isGrass = true;
                    break;
                }
            }

            // Keep all real trees and only remove grass if it's beyond the cull distance
            if (!isGrass || (worldTreePos - playerPos).sqrMagnitude <= sqrCullDist)
            {
                newTrees.Add(tree);
            }
        }

        terrainData.treeInstances = newTrees.ToArray(); // Update terrain trees
    }
}
