# gemifiied KORONA.cloud API client
Based on OpenAPI definition file https://128.koronacloud.com/web/api/v3/swagger.json

# generate gem with openapi-generator (was swagger-codegen)
```
brew install openapi-generator
openapi-generator generate -i swagger.json -g ruby -o gem --package-name korona-cloud-client -p gemName=korona-cloud-client
```
(all ruby options:  [https://openapi-generator.tech/docs/generators/ruby/](https://openapi-generator.tech/docs/generators/ruby/) )

# publish gem to rubygems
```
cd gem
gem build korona-cloud-client.gemspec
gem push korona-cloud-client-1.0.0.gem
```

# usage in a project
```
config = KoronaCloudClient::Configuration.new do |config|
  config.username = '<KORONA_API_USERNAME>'
  config.password = '<KORONA_API_PASSWORD>'
  config.host     = '<HOST>.koronacloud.com'
end

api_client    = KoronaCloudClient::ApiClient.new config
products_api  = KoronaCloudClient::ProductsApi.new api_client
products      = products_api.get_products('<ACCOUNT_ID>')
```
