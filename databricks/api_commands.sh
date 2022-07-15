# to list clusters
curl "https://<databricks-host>/api/2.0/clusters/list" \
      -X GET -H 'Authorization: Bearer <>' | jq
      
      
# new instance pool
curl "https://<databricks-host>/api/2.0/instance-pools/create" \
      -X POST -H "Content-Type: application/json" -H 'Authorization: Bearer <>' \
      -d @pool_new_1.json
# message payload
{
  "instance_pool_name": "model-scoring-pool",
  "node_type_id": "Standard_DS3_v2",
  "min_idle_instances": 5,
  "max_capacity": 10,
  "idle_instance_autotermination_minutes": 60,
  "preloaded_spark_versions": "7.3.x-scala2.12",
  "enable_elastic_disk": true,
  "disk_spec": {
          "disk_count": 0,
          "disk_size": 1,
          "disk_type": {
                  "azure_disk_volume_type": "PREMIUM_LRS"
          }
  },
  "azure_attributes": {
          "availability": "ON_DEMAND_AZURE"
  }
}

