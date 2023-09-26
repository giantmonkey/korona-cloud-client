# KoronaCloudClient::EconomicZonesApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_economic_zones**](EconomicZonesApi.md#add_economic_zones) | **POST** /accounts/{koronaAccountId}/economicZones |  |
| [**delete_economic_zones**](EconomicZonesApi.md#delete_economic_zones) | **DELETE** /accounts/{koronaAccountId}/economicZones |  |
| [**get_economic_zone**](EconomicZonesApi.md#get_economic_zone) | **GET** /accounts/{koronaAccountId}/economicZones/{economicZoneId} |  |
| [**get_economic_zones**](EconomicZonesApi.md#get_economic_zones) | **GET** /accounts/{koronaAccountId}/economicZones |  |
| [**update_economic_zones**](EconomicZonesApi.md#update_economic_zones) | **PATCH** /accounts/{koronaAccountId}/economicZones |  |


## add_economic_zones

> <Array<AddOrUpdateResult>> add_economic_zones(korona_account_id, economic_zone, opts)



adds a batch of new economic zones

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::EconomicZonesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
economic_zone = [KoronaCloudClient::EconomicZone.new] # Array<EconomicZone> | array of new economic zones
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_economic_zones(korona_account_id, economic_zone, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling EconomicZonesApi->add_economic_zones: #{e}"
end
```

#### Using the add_economic_zones_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_economic_zones_with_http_info(korona_account_id, economic_zone, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_economic_zones_with_http_info(korona_account_id, economic_zone, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling EconomicZonesApi->add_economic_zones_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **economic_zone** | [**Array&lt;EconomicZone&gt;**](EconomicZone.md) | array of new economic zones |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_economic_zones

> <Array<AddOrUpdateResult>> delete_economic_zones(korona_account_id, economic_zone)



deletes a batch of economic zones

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::EconomicZonesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
economic_zone = [KoronaCloudClient::EconomicZone.new] # Array<EconomicZone> | array of existing economic zones (id or number required)

begin
  
  result = api_instance.delete_economic_zones(korona_account_id, economic_zone)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling EconomicZonesApi->delete_economic_zones: #{e}"
end
```

#### Using the delete_economic_zones_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_economic_zones_with_http_info(korona_account_id, economic_zone)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_economic_zones_with_http_info(korona_account_id, economic_zone)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling EconomicZonesApi->delete_economic_zones_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **economic_zone** | [**Array&lt;EconomicZone&gt;**](EconomicZone.md) | array of existing economic zones (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_economic_zone

> <EconomicZone> get_economic_zone(korona_account_id, economic_zone_id)



returns the single economic zone

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::EconomicZonesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
economic_zone_id = 'economic_zone_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_economic_zone(korona_account_id, economic_zone_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling EconomicZonesApi->get_economic_zone: #{e}"
end
```

#### Using the get_economic_zone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EconomicZone>, Integer, Hash)> get_economic_zone_with_http_info(korona_account_id, economic_zone_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_economic_zone_with_http_info(korona_account_id, economic_zone_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EconomicZone>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling EconomicZonesApi->get_economic_zone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **economic_zone_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**EconomicZone**](EconomicZone.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_economic_zones

> <ResultListEconomicZone> get_economic_zones(korona_account_id, opts)



lists all economic zones

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::EconomicZonesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example' # String | number of the related object
}

begin
  
  result = api_instance.get_economic_zones(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling EconomicZonesApi->get_economic_zones: #{e}"
end
```

#### Using the get_economic_zones_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListEconomicZone>, Integer, Hash)> get_economic_zones_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_economic_zones_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListEconomicZone>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling EconomicZonesApi->get_economic_zones_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |
| **number** | **String** | number of the related object | [optional] |

### Return type

[**ResultListEconomicZone**](ResultListEconomicZone.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_economic_zones

> <Array<AddOrUpdateResult>> update_economic_zones(korona_account_id, economic_zone)



updates a batch of economic zones

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::EconomicZonesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
economic_zone = [KoronaCloudClient::EconomicZone.new] # Array<EconomicZone> | array of existing economic zones (id or number required)

begin
  
  result = api_instance.update_economic_zones(korona_account_id, economic_zone)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling EconomicZonesApi->update_economic_zones: #{e}"
end
```

#### Using the update_economic_zones_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_economic_zones_with_http_info(korona_account_id, economic_zone)

```ruby
begin
  
  data, status_code, headers = api_instance.update_economic_zones_with_http_info(korona_account_id, economic_zone)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling EconomicZonesApi->update_economic_zones_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **economic_zone** | [**Array&lt;EconomicZone&gt;**](EconomicZone.md) | array of existing economic zones (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

