# Convert Postman collections to OpenAPI YAML
convert:
	p2o "collections/Binance Broker API.postman_collection.json" -f openapi/broker.yaml
	scripts/remove_empty_requests.sh openapi/broker.yaml

	p2o "collections/Binance Coin-M Futures API.postman_collection.json" -f openapi/coinm.yaml -o options/coinm.json
	scripts/remove_empty_requests.sh openapi/coinm.yaml

	p2o "collections/Binance European Options API.postman_collection.json" -f openapi/european_option.yaml -o options/european_option.json
	scripts/remove_empty_requests.sh openapi/european_option.yaml

	p2o "collections/Binance Spot API.postman_collection.json" -f openapi/spot.yaml -o options/spot.json
	scripts/remove_empty_requests.sh openapi/spot.yaml

	p2o "collections/Binance USDs-M Futures API.postman_collection.json" -f openapi/usdsm.yaml -o options/usdsm.json
	scripts/remove_empty_requests.sh openapi/usdsm.yaml

