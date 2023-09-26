# KoronaCloudClient::SectorsApi

All URIs are relative to *https://128.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_sectors**](SectorsApi.md#add_sectors) | **POST** /accounts/{koronaAccountId}/sectors |  |
| [**delete_sectors**](SectorsApi.md#delete_sectors) | **DELETE** /accounts/{koronaAccountId}/sectors |  |
| [**get_sector**](SectorsApi.md#get_sector) | **GET** /accounts/{koronaAccountId}/sectors/{sectorId} |  |
| [**get_sectors**](SectorsApi.md#get_sectors) | **GET** /accounts/{koronaAccountId}/sectors |  |
| [**update_sectors**](SectorsApi.md#update_sectors) | **PATCH** /accounts/{koronaAccountId}/sectors |  |


## add_sectors

> <Array<AddOrUpdateResult>> add_sectors(korona_account_id, sector, opts)



adds a batch of new sectors

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

api_instance = KoronaCloudClient::SectorsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
sector = [KoronaCloudClient::Sector.new] # Array<Sector> | array of new sectors
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_sectors(korona_account_id, sector, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SectorsApi->add_sectors: #{e}"
end
```

#### Using the add_sectors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_sectors_with_http_info(korona_account_id, sector, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_sectors_with_http_info(korona_account_id, sector, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SectorsApi->add_sectors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **sector** | [**Array&lt;Sector&gt;**](Sector.md) | array of new sectors |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_sectors

> <Array<AddOrUpdateResult>> delete_sectors(korona_account_id, sector)



deletes a batch of sectors

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

api_instance = KoronaCloudClient::SectorsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
sector = [KoronaCloudClient::Sector.new] # Array<Sector> | array of existing sectors (id or number required)

begin
  
  result = api_instance.delete_sectors(korona_account_id, sector)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SectorsApi->delete_sectors: #{e}"
end
```

#### Using the delete_sectors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_sectors_with_http_info(korona_account_id, sector)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_sectors_with_http_info(korona_account_id, sector)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SectorsApi->delete_sectors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **sector** | [**Array&lt;Sector&gt;**](Sector.md) | array of existing sectors (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_sector

> <Sector> get_sector(korona_account_id, sector_id)



returns the single sector

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

api_instance = KoronaCloudClient::SectorsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
sector_id = 'sector_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_sector(korona_account_id, sector_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SectorsApi->get_sector: #{e}"
end
```

#### Using the get_sector_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Sector>, Integer, Hash)> get_sector_with_http_info(korona_account_id, sector_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_sector_with_http_info(korona_account_id, sector_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Sector>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SectorsApi->get_sector_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **sector_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**Sector**](Sector.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sectors

> <ResultListSector> get_sectors(korona_account_id, opts)



lists all sectors

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

api_instance = KoronaCloudClient::SectorsApi.new
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
  
  result = api_instance.get_sectors(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SectorsApi->get_sectors: #{e}"
end
```

#### Using the get_sectors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListSector>, Integer, Hash)> get_sectors_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_sectors_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListSector>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SectorsApi->get_sectors_with_http_info: #{e}"
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

[**ResultListSector**](ResultListSector.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_sectors

> <Array<AddOrUpdateResult>> update_sectors(korona_account_id, sector)



updates a batch of sectors

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

api_instance = KoronaCloudClient::SectorsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
sector = [KoronaCloudClient::Sector.new] # Array<Sector> | array of existing sectors (id or number required)

begin
  
  result = api_instance.update_sectors(korona_account_id, sector)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SectorsApi->update_sectors: #{e}"
end
```

#### Using the update_sectors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_sectors_with_http_info(korona_account_id, sector)

```ruby
begin
  
  data, status_code, headers = api_instance.update_sectors_with_http_info(korona_account_id, sector)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling SectorsApi->update_sectors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **sector** | [**Array&lt;Sector&gt;**](Sector.md) | array of existing sectors (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

