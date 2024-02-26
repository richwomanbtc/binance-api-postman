# Convert Postman collections to OpenAPI YAML
convert:
	p2o "collections/Binance Broker API.postman_collection.json" -f openapi/broker.yaml
	p2o "collections/Binance Coin-M Futures API.postman_collection.json" -f openapi/coinm.yaml -o options/coinm.json
	p2o "collections/Binance European Options API.postman_collection.json" -f openapi/european_option.yaml -o options/european_option.json
	p2o "collections/Binance Spot API.postman_collection.json" -f openapi/spot.yaml -o options/spot.json
	p2o "collections/Binance USDs-M Futures API.postman_collection.json" -f openapi/usdsm.yaml -o options/usdsm.json

