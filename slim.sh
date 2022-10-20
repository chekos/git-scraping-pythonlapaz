#!/bin/bash

# Oakland to Golden Gate Bridge
curl "https://maps.googleapis.com/maps/api/directions/json?origin=place_id:ChIJQabAAlSEj4ARYHQBAw8MY7A&destination=place_id:ChIJw____96GhYARCVVwg5cT7c0&departure_time=now&key=$GOOGLE_MAPS_API_KEY" | jq '{id: "oakland-goldengate", duration_in_traffic: .routes[0].legs[0].duration_in_traffic.value}' > oakland-to-goldengate.json
sleep 3
# Golden Gate Bridge to Oakland
curl "https://maps.googleapis.com/maps/api/directions/json?origin=place_id:ChIJw____96GhYARCVVwg5cT7c0&destination=place_id:ChIJQabAAlSEj4ARYHQBAw8MY7A&departure_time=now&key=$GOOGLE_MAPS_API_KEY" | jq '{id: "goldengate-oakland", duration_in_traffic: .routes[0].legs[0].duration_in_traffic.value}' > goldengate-to-oakland.json
sleep 3

# # SFO to Golden Gate Bridge
# curl "https://maps.googleapis.com/maps/api/directions/json?origin=place_id:ChIJVVVVVYx3j4ARP-3NGldc8qQ&destination=place_id:ChIJw____96GhYARCVVwg5cT7c0&departure_time=now&key=$GOOGLE_MAPS_API_KEY" | jq '{id: "sfo-goldengate", duration_in_traffic: .routes[0].legs[0].duration_in_traffic.value}' > sfo-to-goldengate.json
# sleep 3
# # Golden Gate Bridge to SFO
# curl "https://maps.googleapis.com/maps/api/directions/json?origin=place_id:ChIJw____96GhYARCVVwg5cT7c0&destination=place_id:ChIJVVVVVYx3j4ARP-3NGldc8qQ&departure_time=now&key=$GOOGLE_MAPS_API_KEY" | jq '{id: "goldengate-sfo", duration_in_traffic: .routes[0].legs[0].duration_in_traffic.value}' > goldengate-to-sfo.json
# sleep 3

# # San Jose Airport to Golden Gate Bridge
# curl "https://maps.googleapis.com/maps/api/directions/json?origin=place_id:ChIJ91RM4jLLj4ARPQhTsyC5m3o&destination=place_id:ChIJw____96GhYARCVVwg5cT7c0&departure_time=now&key=$GOOGLE_MAPS_API_KEY" | jq '{id: "sanjose-goldengate", duration_in_traffic: .routes[0].legs[0].duration_in_traffic.value}' > sanjose-to-goldengate.json
# sleep 3
# # Golden Gate Bridge to San Jose Airport
# curl "https://maps.googleapis.com/maps/api/directions/json?origin=place_id:ChIJw____96GhYARCVVwg5cT7c0&destination=place_id:ChIJ91RM4jLLj4ARPQhTsyC5m3o&departure_time=now&key=$GOOGLE_MAPS_API_KEY" | jq '{id: "goldengate-sanjose", duration_in_traffic: .routes[0].legs[0].duration_in_traffic.value}' > goldengate-to-sanjose.json
# sleep 3
