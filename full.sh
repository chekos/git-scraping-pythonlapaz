#!/bin/bash

# Oakland to Golden Gate Bridge
curl "https://maps.googleapis.com/maps/api/directions/json?origin=place_id:ChIJQabAAlSEj4ARYHQBAw8MY7A&destination=place_id:ChIJw____96GhYARCVVwg5cT7c0&departure_time=now&key=$GOOGLE_MAPS_API_KEY" | jq > oakland-to-goldengate.json

# Golden Gate Bridge to Oakland
curl "https://maps.googleapis.com/maps/api/directions/json?origin=place_id:ChIJw____96GhYARCVVwg5cT7c0&destination=place_id:ChIJQabAAlSEj4ARYHQBAw8MY7A&departure_time=now&key=$GOOGLE_MAPS_API_KEY" | jq > goldengate-to-oakland.json


# SFO to Golden Gate Bridge
curl "https://maps.googleapis.com/maps/api/directions/json?origin=place_id:ChIJVVVVVYx3j4ARP-3NGldc8qQ&destination=place_id:ChIJw____96GhYARCVVwg5cT7c0&departure_time=now&key=$GOOGLE_MAPS_API_KEY" | jq > sfo-to-goldengate.json

# Golden Gate Bridge to SFO
curl "https://maps.googleapis.com/maps/api/directions/json?origin=place_id:ChIJw____96GhYARCVVwg5cT7c0&destination=place_id:ChIJVVVVVYx3j4ARP-3NGldc8qQ&departure_time=now&key=$GOOGLE_MAPS_API_KEY" | jq > goldengate-to-sfo.json


# San Jose Airport to Golden Gate Bridge
curl "https://maps.googleapis.com/maps/api/directions/json?origin=place_id:ChIJ91RM4jLLj4ARPQhTsyC5m3o&destination=place_id:ChIJw____96GhYARCVVwg5cT7c0&departure_time=now&key=$GOOGLE_MAPS_API_KEY" | jq > sanjose-to-goldengate.json

# Golden Gate Bridge to San Jose Airport
curl "https://maps.googleapis.com/maps/api/directions/json?origin=place_id:ChIJw____96GhYARCVVwg5cT7c0&destination=place_id:ChIJ91RM4jLLj4ARPQhTsyC5m3o&departure_time=now&key=$GOOGLE_MAPS_API_KEY" | jq > goldengate-to-sanjose.json

