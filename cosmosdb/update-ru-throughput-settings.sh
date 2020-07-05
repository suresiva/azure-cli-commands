#!/bin/bash

# using SQL API

# to show the throughput (RUs) configured for a database
az cosmosdb sql database throughput show --subscription demo-sub-1 --resource-group demo-rg-1 --account-name demo-cosmos-account-name --name db-name-1


# to update the throughput (RUs) of a database
az cosmosdb sql database throughput update --subscription demo-sub-1 --resource-group demo-rg-1 --account-name demo-cosmos-account-name --name db-name-1 --throughput 14000


# to show a collection's throughput (RUs) details
az cosmosdb sql container throughput show --subscription demo-sub-1 --resource-group demo-rg-1 --account-name demo-cosmos-account-name --database-name db-name-1 --name test_coll-1
#can also do it with the collection subcommand
az cosmosdb collection show --subscription demo-sub-1 --resource-group-name demo-rg-1 --name demo-cosmos-account-name --db-name db-name-1 --collection-name test_coll-1

#to update the throughput (RUs) of a collection
az cosmosdb sql container throughput update --subscription demo-sub-1 --resource-group demo-rg-1 --account-name demo-cosmos-account-name --database-name db-name-1 --name test_coll-1 --throughput 400
#can also do it with the collection subcommand
az cosmosdb collection update --subscription demo-sub-1 --resource-group-name demo-rg-1 --name demo-cosmos-account-name --db-name db-name-1 --collection-name test_coll-1 --throughput 400
