#!/bin/bash


# to list all the database details from the cosmosdb account

az cosmosdb database list --subscription demo-sub-1 --resource-group-name demo-rg-1 --name demo-cosmos-account-name



# to show details of a database from a cosmosdb account

az cosmosdb collection list --subscription demo-sub-1 --resource-group-name demo-rg-1 --name demo-cosmos-account-name --db-name db-name-1



# to list all the collections details from a database and cosmosdb account

az cosmosdb collection list --subscription demo-sub-1 --resource-group-name demo-rg-1 --name demo-cosmos-account-name --db-name db-name-1



# to show details of a collection from a database and cosmosdb account

az cosmosdb collection show --subscription demo-sub-1 --resource-group-name demo-rg-1 --name demo-cosmos-account-name --db-name db-name-1 --collection-name test_coll-1
