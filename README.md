# gemifiied KORONA.cloud API client

[![Gem Version](https://badge.fury.io/rb/korona-cloud-client.svg)](https://badge.fury.io/rb/korona-cloud-client)

## OpenAPI definition sources

Fetch the definition live from a KORONA instance and regenerate from it:

- **https://128.koronacloud.com/web/api/v3/openapi.json** — **OpenAPI 3.1**, the newest and most complete spec. Use this. (Any `<instance>.koronacloud.com` host serves the same definition.)

Deprecated / stale sources, for reference only:

- `https://128.koronacloud.com/web/api/v3/swagger.json` — **deprecated**; the endpoint now just tells you to use `openapi.json`.
- https://support.korona.de/misc/korona-cloud-api-v3/swagger.196.json — a static Swagger 2.0 export on the support site, several versions behind the live spec.

Note: KORONA periodically returns enum values that are not yet in any published spec (e.g. new
`dsfinvkTaxKey`s). The stock generator raises `ArgumentError` while *deserializing* such responses,
so the enum-setter template override below is required in addition to regenerating from the newest
spec — regeneration fixes today's known values, the override survives the next undocumented one.

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
### 3. fetch & prepare the spec
Download the live definition and downgrade the declared OpenAPI version from `3.1.0` to `3.0.3`.
The spec uses no actual 3.1 features, but openapi-generator (all 7.x versions tested) crashes with a
`NullPointerException` the moment it sees `"openapi": "3.1.0"` — flipping the version string makes its
mature 3.0 parser handle the same content cleanly.
```
curl -fsSL https://128.koronacloud.com/web/api/v3/openapi.json \
  | ruby -rjson -e 'd=JSON.parse($stdin.read); d["openapi"]="3.0.3"; print JSON.generate(d)' > swagger.json
```

### 4. generate the gem code
```
npx @openapitools/openapi-generator-cli generate -i swagger.json -g ruby -o gem -t templates \
--skip-validate-spec \
--package-name korona-cloud-client -p gemName=korona-cloud-client -p gemVersion=1.0.13 \
-p gemHomepage=https://github.com/giantmonkey/korona-cloud-client
```
`--skip-validate-spec` is required because the downgraded doc trips the 3.0 validator on a couple of
benign points (e.g. an empty `{}` schema at `Coupon/properties/external`).

`-t templates` applies our local overrides in `templates/`. Currently this customizes
`partial_model_generic.mustache` so enum setters **tolerate unknown values instead of raising**:
the KORONA API ships enum values (e.g. new `dsfinvkTaxKey`s) that are not in its own published
`swagger.json`, and the stock generator raises `ArgumentError` while *deserializing* such responses,
crashing otherwise-valid API calls. Files not present in `templates/` fall back to the generator's
built-ins, so the override stays minimal. Re-extract pristine templates with
`openapi-generator-cli author template -g ruby -o /tmp/pristine` when diffing against a new
generator version.

## The homebrew way (tm) (deprecated)
update the gem version before running this:
```
brew install openapi-generator
openapi-generator generate -i swagger.json -g ruby -o gem --package-name korona-cloud-client \
-p gemName=korona-cloud-client -p gemHomepage=https://github.com/giantmonkey/korona-cloud-client -p gemVersion=1.0.13
```
(all ruby options:  [https://openapi-generator.tech/docs/generators/ruby/](https://openapi-generator.tech/docs/generators/ruby/) )

# Publish gem to rubygems
## fix the overlong file path for a spec file and build gem
```bash
cd gem
mv spec/models/promotion_benefit_extended_discount_position_selection_criteria_min_max_range_value_comperator_spec.rb spec/models/promotion_benefit_extended_discount_position_selection_comperator_spec.rb
gem build korona-cloud-client.gemspec
```
## push to rubygems
```bash
gem push korona-cloud-client-1.0.10.gem
```

# usage in a project
```ruby
config = KoronaCloudClient::Configuration.new do |config|
  config.username = '<KORONA_API_USERNAME>'
  config.password = '<KORONA_API_PASSWORD>'
  config.host     = '<HOST>.koronacloud.com'
end

api_client    = KoronaCloudClient::ApiClient.new config
products_api  = KoronaCloudClient::ProductsApi.new api_client
products      = products_api.get_products('<ACCOUNT_ID>')
```
