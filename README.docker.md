# Docker usage

## For local testing
 * Simply `docker compose up`
 * Only accessible from localhost by default
 * The storage volume is ephemeral

## For production
 * Copy `authServers.json` 
 * Replicate relevant parts of `docker-compose.yml` into your own setup
 * Refer to this directory/repository with `build:` instruction
