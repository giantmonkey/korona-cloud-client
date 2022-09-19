# gemifiied KORONA.cloud API client

[![Gem Version](https://badge.fury.io/rb/korona-cloud-client.svg)](https://badge.fury.io/rb/korona-cloud-client)

Based on OpenAPI definition file https://128.koronacloud.com/web/api/v3/swagger.json

# Generate gem with openapi-generator (was swagger-codegen)
## The openapi-generator-cli way (tm)
### 1. install the generator
```
npm install @openapitools/openapi-generator-cli -g
```
### 2. select version (optional)
```
openapi-generator-cli version-manager list
```
### 3. generate the gem code
```
npx @openapitools/openapi-generator-cli generate -i swagger.json -g ruby -o gem --package-name korona-cloud-client -p gemName=korona-cloud-client -p gemHomepage=https://github.com/giantmonkey/korona-cloud-client -p gemRequiredRubyVersion=2.3.8 -p gemVersion=1.0.10
```

## The homebrew way (tm) (deprecated)
update the gem version before running this:
```
brew install openapi-generator
openapi-generator generate -i swagger.json -g ruby -o gem --package-name korona-cloud-client -p gemName=korona-cloud-client -p gemHomepage=https://github.com/giantmonkey/korona-cloud-client -p gemVersion=1.0.10
```
(all ruby options:  [https://openapi-generator.tech/docs/generators/ruby/](https://openapi-generator.tech/docs/generators/ruby/) )

# Publish gem to rubygems
## fix the overlong file path for a spec file and build gem
```
cd gem
mv spec/models/promotion_benefit_extended_discount_position_selection_criteria_min_max_range_value_comperator_spec.rb spec/models/promotion_benefit_extended_discount_position_selection_comperator_spec.rb
gem build korona-cloud-client.gemspec
```
## push to rubygems
```
gem push korona-cloud-client-1.0.10.gem
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
