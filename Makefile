# Convert Postman collections to OpenAPI YAML
convert:
	p2o "collections/Binance Broker API.postman_collection.json" -f openapi/broker.yaml
	scripts/post_process.sh openapi/broker.yaml

	p2o "collections/Binance Coin-M Futures API.postman_collection.json" -f openapi/coinm.yaml -o options/coinm.json
	scripts/post_process.sh openapi/coinm.yaml

	p2o "collections/Binance European Options API.postman_collection.json" -f openapi/european_option.yaml -o options/european_option.json
	scripts/post_process.sh openapi/european_option.yaml

	p2o "collections/Binance Spot API.postman_collection.json" -f openapi/spot.yaml -o options/spot.json
	scripts/post_process.sh openapi/spot.yaml

	p2o "collections/Binance USDs-M Futures API with response example.postman_collection.json" -f openapi/usdsm.yaml -o options/usdsm.json
	scripts/post_process.sh openapi/usdsm.yaml

