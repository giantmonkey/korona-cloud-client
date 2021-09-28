# KoronaCloudClient::PosProfilesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_pos_profiles**](PosProfilesApi.md#add_pos_profiles) | **POST** /accounts/{koronaAccountId}/posProfiles | adds a batch of new pos profiles |
| [**delete_pos_profile**](PosProfilesApi.md#delete_pos_profile) | **DELETE** /accounts/{koronaAccountId}/posProfiles/{posProfileId} | deletes the single pos profile |
| [**delete_pos_profiles**](PosProfilesApi.md#delete_pos_profiles) | **DELETE** /accounts/{koronaAccountId}/posProfiles | deletes a batch of pos profiles |
| [**get_pos_profile**](PosProfilesApi.md#get_pos_profile) | **GET** /accounts/{koronaAccountId}/posProfiles/{posProfileId} | returns the single pos profile |
| [**get_pos_profiles**](PosProfilesApi.md#get_pos_profiles) | **GET** /accounts/{koronaAccountId}/posProfiles | lists all pos profiles |
| [**update_pos_profile**](PosProfilesApi.md#update_pos_profile) | **PATCH** /accounts/{koronaAccountId}/posProfiles/{posProfileId} | updates the single pos profile |
| [**update_pos_profiles**](PosProfilesApi.md#update_pos_profiles) | **PATCH** /accounts/{koronaAccountId}/posProfiles | updates a batch of pos profiles |


## add_pos_profiles

> <Array<AddOrUpdateResult>> add_pos_profiles(korona_account_id, body, opts)

adds a batch of new pos profiles

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

api_instance = KoronaCloudClient::PosProfilesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::PosProfile.new] # Array<PosProfile> | array of new pos profiles
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new pos profiles
  result = api_instance.add_pos_profiles(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosProfilesApi->add_pos_profiles: #{e}"
end
```

#### Using the add_pos_profiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_pos_profiles_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new pos profiles
  data, status_code, headers = api_instance.add_pos_profiles_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosProfilesApi->add_pos_profiles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;PosProfile&gt;**](PosProfile.md) | array of new pos profiles |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_pos_profile

> delete_pos_profile(korona_account_id, pos_profile_id)

deletes the single pos profile

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

api_instance = KoronaCloudClient::PosProfilesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
pos_profile_id = 'pos_profile_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single pos profile
  api_instance.delete_pos_profile(korona_account_id, pos_profile_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosProfilesApi->delete_pos_profile: #{e}"
end
```

#### Using the delete_pos_profile_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_pos_profile_with_http_info(korona_account_id, pos_profile_id)

```ruby
begin
  # deletes the single pos profile
  data, status_code, headers = api_instance.delete_pos_profile_with_http_info(korona_account_id, pos_profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosProfilesApi->delete_pos_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **pos_profile_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_pos_profiles

> <Array<AddOrUpdateResult>> delete_pos_profiles(korona_account_id, body)

deletes a batch of pos profiles

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

api_instance = KoronaCloudClient::PosProfilesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::PosProfile.new] # Array<PosProfile> | array of existing pos profiles (id or number required)

begin
  # deletes a batch of pos profiles
  result = api_instance.delete_pos_profiles(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosProfilesApi->delete_pos_profiles: #{e}"
end
```

#### Using the delete_pos_profiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_pos_profiles_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of pos profiles
  data, status_code, headers = api_instance.delete_pos_profiles_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosProfilesApi->delete_pos_profiles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;PosProfile&gt;**](PosProfile.md) | array of existing pos profiles (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_pos_profile

> <PosProfile> get_pos_profile(korona_account_id, pos_profile_id)

returns the single pos profile

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

api_instance = KoronaCloudClient::PosProfilesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
pos_profile_id = 'pos_profile_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single pos profile
  result = api_instance.get_pos_profile(korona_account_id, pos_profile_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosProfilesApi->get_pos_profile: #{e}"
end
```

#### Using the get_pos_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PosProfile>, Integer, Hash)> get_pos_profile_with_http_info(korona_account_id, pos_profile_id)

```ruby
begin
  # returns the single pos profile
  data, status_code, headers = api_instance.get_pos_profile_with_http_info(korona_account_id, pos_profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PosProfile>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosProfilesApi->get_pos_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **pos_profile_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**PosProfile**](PosProfile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pos_profiles

> <ResultListPosProfile> get_pos_profiles(korona_account_id, opts)

lists all pos profiles

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

api_instance = KoronaCloudClient::PosProfilesApi.new
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
  # lists all pos profiles
  result = api_instance.get_pos_profiles(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosProfilesApi->get_pos_profiles: #{e}"
end
```

#### Using the get_pos_profiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListPosProfile>, Integer, Hash)> get_pos_profiles_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all pos profiles
  data, status_code, headers = api_instance.get_pos_profiles_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListPosProfile>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosProfilesApi->get_pos_profiles_with_http_info: #{e}"
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

[**ResultListPosProfile**](ResultListPosProfile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_pos_profile

> update_pos_profile(korona_account_id, pos_profile_id, body)

updates the single pos profile

if [number] is set, the number of the object will change and the resource location as well

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

api_instance = KoronaCloudClient::PosProfilesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
pos_profile_id = 'pos_profile_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::PosProfile.new # PosProfile | the properties to update of the pos profile

begin
  # updates the single pos profile
  api_instance.update_pos_profile(korona_account_id, pos_profile_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosProfilesApi->update_pos_profile: #{e}"
end
```

#### Using the update_pos_profile_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_pos_profile_with_http_info(korona_account_id, pos_profile_id, body)

```ruby
begin
  # updates the single pos profile
  data, status_code, headers = api_instance.update_pos_profile_with_http_info(korona_account_id, pos_profile_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosProfilesApi->update_pos_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **pos_profile_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**PosProfile**](PosProfile.md) | the properties to update of the pos profile |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_pos_profiles

> <Array<AddOrUpdateResult>> update_pos_profiles(korona_account_id, body)

updates a batch of pos profiles

[number] must be set in the objects, otherwise the object cannot be updated

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

api_instance = KoronaCloudClient::PosProfilesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::PosProfile.new] # Array<PosProfile> | an array of existing pos profiles

begin
  # updates a batch of pos profiles
  result = api_instance.update_pos_profiles(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosProfilesApi->update_pos_profiles: #{e}"
end
```

#### Using the update_pos_profiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_pos_profiles_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of pos profiles
  data, status_code, headers = api_instance.update_pos_profiles_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PosProfilesApi->update_pos_profiles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;PosProfile&gt;**](PosProfile.md) | an array of existing pos profiles |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

