# KoronaCloudClient::FiscalUnitsApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_fiscal_units**](FiscalUnitsApi.md#add_fiscal_units) | **POST** /accounts/{koronaAccountId}/fiscalUnits |  |
| [**get_fiscal_unit**](FiscalUnitsApi.md#get_fiscal_unit) | **GET** /accounts/{koronaAccountId}/fiscalUnits/{fiscalUnitId} |  |
| [**get_fiscal_units**](FiscalUnitsApi.md#get_fiscal_units) | **GET** /accounts/{koronaAccountId}/fiscalUnits |  |
| [**update_fiscal_unit**](FiscalUnitsApi.md#update_fiscal_unit) | **PATCH** /accounts/{koronaAccountId}/fiscalUnits/{fiscalUnitId} |  |
| [**update_fiscal_units**](FiscalUnitsApi.md#update_fiscal_units) | **PATCH** /accounts/{koronaAccountId}/fiscalUnits |  |


## add_fiscal_units

> <Array<AddOrUpdateResult>> add_fiscal_units(korona_account_id, fiscal_unit, opts)



adds a batch of fiscal units

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

api_instance = KoronaCloudClient::FiscalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
fiscal_unit = [KoronaCloudClient::FiscalUnit.new] # Array<FiscalUnit> | array of new fiscal units
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_fiscal_units(korona_account_id, fiscal_unit, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling FiscalUnitsApi->add_fiscal_units: #{e}"
end
```

#### Using the add_fiscal_units_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_fiscal_units_with_http_info(korona_account_id, fiscal_unit, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_fiscal_units_with_http_info(korona_account_id, fiscal_unit, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling FiscalUnitsApi->add_fiscal_units_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **fiscal_unit** | [**Array&lt;FiscalUnit&gt;**](FiscalUnit.md) | array of new fiscal units |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_fiscal_unit

> <FiscalUnit> get_fiscal_unit(korona_account_id, fiscal_unit_id)



returns the single fiscal unit

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

api_instance = KoronaCloudClient::FiscalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
fiscal_unit_id = 'fiscal_unit_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_fiscal_unit(korona_account_id, fiscal_unit_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling FiscalUnitsApi->get_fiscal_unit: #{e}"
end
```

#### Using the get_fiscal_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FiscalUnit>, Integer, Hash)> get_fiscal_unit_with_http_info(korona_account_id, fiscal_unit_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_fiscal_unit_with_http_info(korona_account_id, fiscal_unit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FiscalUnit>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling FiscalUnitsApi->get_fiscal_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **fiscal_unit_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**FiscalUnit**](FiscalUnit.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fiscal_units

> <ResultListFiscalUnit> get_fiscal_units(korona_account_id, opts)



lists all fiscal units

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

api_instance = KoronaCloudClient::FiscalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example', # String | number of the related object
  type: 'EFSTA', # String | type of fiscal unit
  api_key: 'api_key_example' # String | api key of fiscal unit
}

begin
  
  result = api_instance.get_fiscal_units(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling FiscalUnitsApi->get_fiscal_units: #{e}"
end
```

#### Using the get_fiscal_units_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListFiscalUnit>, Integer, Hash)> get_fiscal_units_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_fiscal_units_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListFiscalUnit>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling FiscalUnitsApi->get_fiscal_units_with_http_info: #{e}"
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
| **type** | **String** | type of fiscal unit | [optional] |
| **api_key** | **String** | api key of fiscal unit | [optional] |

### Return type

[**ResultListFiscalUnit**](ResultListFiscalUnit.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_fiscal_unit

> update_fiscal_unit(korona_account_id, fiscal_unit_id, fiscal_unit)



updates the fiscal unit

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

api_instance = KoronaCloudClient::FiscalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
fiscal_unit_id = 'fiscal_unit_id_example' # String | id of the related object (important: id should match the uuid-format)
fiscal_unit = KoronaCloudClient::FiscalUnit.new # FiscalUnit | the properties to update of the fiscal unit

begin
  
  api_instance.update_fiscal_unit(korona_account_id, fiscal_unit_id, fiscal_unit)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling FiscalUnitsApi->update_fiscal_unit: #{e}"
end
```

#### Using the update_fiscal_unit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_fiscal_unit_with_http_info(korona_account_id, fiscal_unit_id, fiscal_unit)

```ruby
begin
  
  data, status_code, headers = api_instance.update_fiscal_unit_with_http_info(korona_account_id, fiscal_unit_id, fiscal_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling FiscalUnitsApi->update_fiscal_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **fiscal_unit_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **fiscal_unit** | [**FiscalUnit**](FiscalUnit.md) | the properties to update of the fiscal unit |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_fiscal_units

> <Array<AddOrUpdateResult>> update_fiscal_units(korona_account_id, fiscal_unit)



updates a batch of fiscal units

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

api_instance = KoronaCloudClient::FiscalUnitsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
fiscal_unit = [KoronaCloudClient::FiscalUnit.new] # Array<FiscalUnit> | array of existing fiscal units (id or number required)

begin
  
  result = api_instance.update_fiscal_units(korona_account_id, fiscal_unit)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling FiscalUnitsApi->update_fiscal_units: #{e}"
end
```

#### Using the update_fiscal_units_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_fiscal_units_with_http_info(korona_account_id, fiscal_unit)

```ruby
begin
  
  data, status_code, headers = api_instance.update_fiscal_units_with_http_info(korona_account_id, fiscal_unit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling FiscalUnitsApi->update_fiscal_units_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **fiscal_unit** | [**Array&lt;FiscalUnit&gt;**](FiscalUnit.md) | array of existing fiscal units (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

