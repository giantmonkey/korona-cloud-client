# gemifiied KORONA.cloud API client

[![Gem Version](https://badge.fury.io/rb/korona-cloud-client.svg)](https://badge.fury.io/rb/korona-cloud-client)

Based on OpenAPI definition file https://128.koronacloud.com/web/api/v3/swagger.json

# generate gem with openapi-generator (was swagger-codegen)
update the gem version before running this:
```
brew install openapi-generator
openapi-generator generate -i swagger.json -g ruby -o gem --package-name korona-cloud-client -p gemName=korona-cloud-client -p gemHomepage=https://github.com/giantmonkey/korona-cloud-client -p gemVersion=1.0.2
```
(all ruby options:  [https://openapi-generator.tech/docs/generators/ruby/](https://openapi-generator.tech/docs/generators/ruby/) )

# publish gem to rubygems
```
cd gem
gem build korona-cloud-client.gemspec
gem push korona-cloud-client-1.0.2.gem
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
