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
# FIXME: adapt this to new Namespace
config = KoronaEntryClient::Configuration.new {|config| config.host = 'korona3.de'; config.base_path = 'entry_mk/services/v1/rxb/' }
client  =  KoronaEntryClient::ApiClient.new(config)
api     = KoronaEntryClient::TicketsApi.new(client)
api.get_tickets('', 0, 1, {locked: true})
```
