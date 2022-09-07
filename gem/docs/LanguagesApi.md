# KoronaCloudClient::LanguagesApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_languages**](LanguagesApi.md#add_languages) | **POST** /accounts/{koronaAccountId}/languages | adds a batch of new languages |
| [**delete_language**](LanguagesApi.md#delete_language) | **DELETE** /accounts/{koronaAccountId}/languages/{languageId} | deletes the single language |
| [**delete_languages**](LanguagesApi.md#delete_languages) | **DELETE** /accounts/{koronaAccountId}/languages | deletes a batch of languages |
| [**get_language**](LanguagesApi.md#get_language) | **GET** /accounts/{koronaAccountId}/languages/{languageId} | returns a single language |
| [**get_languages**](LanguagesApi.md#get_languages) | **GET** /accounts/{koronaAccountId}/languages | lists all languages |
| [**update_language**](LanguagesApi.md#update_language) | **PATCH** /accounts/{koronaAccountId}/languages/{languageId} | updates the single language |
| [**update_languages**](LanguagesApi.md#update_languages) | **PATCH** /accounts/{koronaAccountId}/languages | updates a batch of languages |


## add_languages

> <Array<AddOrUpdateResult>> add_languages(korona_account_id, body, opts)

adds a batch of new languages

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

api_instance = KoronaCloudClient::LanguagesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::LanguageResource.new] # Array<LanguageResource> | array of new languages
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new languages
  result = api_instance.add_languages(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->add_languages: #{e}"
end
```

#### Using the add_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_languages_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new languages
  data, status_code, headers = api_instance.add_languages_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->add_languages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;LanguageResource&gt;**](LanguageResource.md) | array of new languages |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_language

> delete_language(korona_account_id, language_id)

deletes the single language

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

api_instance = KoronaCloudClient::LanguagesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
language_id = 'language_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single language
  api_instance.delete_language(korona_account_id, language_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->delete_language: #{e}"
end
```

#### Using the delete_language_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_language_with_http_info(korona_account_id, language_id)

```ruby
begin
  # deletes the single language
  data, status_code, headers = api_instance.delete_language_with_http_info(korona_account_id, language_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->delete_language_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **language_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_languages

> <Array<AddOrUpdateResult>> delete_languages(korona_account_id, body)

deletes a batch of languages

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

api_instance = KoronaCloudClient::LanguagesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::LanguageResource.new] # Array<LanguageResource> | array of existing languages (id or number required)

begin
  # deletes a batch of languages
  result = api_instance.delete_languages(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->delete_languages: #{e}"
end
```

#### Using the delete_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_languages_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of languages
  data, status_code, headers = api_instance.delete_languages_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->delete_languages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;LanguageResource&gt;**](LanguageResource.md) | array of existing languages (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_language

> <LanguageResource> get_language(korona_account_id, language_id)

returns a single language

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

api_instance = KoronaCloudClient::LanguagesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
language_id = 'language_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns a single language
  result = api_instance.get_language(korona_account_id, language_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->get_language: #{e}"
end
```

#### Using the get_language_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LanguageResource>, Integer, Hash)> get_language_with_http_info(korona_account_id, language_id)

```ruby
begin
  # returns a single language
  data, status_code, headers = api_instance.get_language_with_http_info(korona_account_id, language_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LanguageResource>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->get_language_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **language_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**LanguageResource**](LanguageResource.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_languages

> <ResultListLanguageResource> get_languages(korona_account_id, opts)

lists all languages

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

api_instance = KoronaCloudClient::LanguagesApi.new
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
  # lists all languages
  result = api_instance.get_languages(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->get_languages: #{e}"
end
```

#### Using the get_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListLanguageResource>, Integer, Hash)> get_languages_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all languages
  data, status_code, headers = api_instance.get_languages_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListLanguageResource>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->get_languages_with_http_info: #{e}"
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

[**ResultListLanguageResource**](ResultListLanguageResource.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_language

> update_language(korona_account_id, language_id, body)

updates the single language

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

api_instance = KoronaCloudClient::LanguagesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
language_id = 'language_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::LanguageResource.new # LanguageResource | the properties to update of the language

begin
  # updates the single language
  api_instance.update_language(korona_account_id, language_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->update_language: #{e}"
end
```

#### Using the update_language_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_language_with_http_info(korona_account_id, language_id, body)

```ruby
begin
  # updates the single language
  data, status_code, headers = api_instance.update_language_with_http_info(korona_account_id, language_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->update_language_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **language_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**LanguageResource**](LanguageResource.md) | the properties to update of the language |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_languages

> <Array<AddOrUpdateResult>> update_languages(korona_account_id, body)

updates a batch of languages

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

api_instance = KoronaCloudClient::LanguagesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::LanguageResource.new] # Array<LanguageResource> | an array of existing languages

begin
  # updates a batch of languages
  result = api_instance.update_languages(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->update_languages: #{e}"
end
```

#### Using the update_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_languages_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of languages
  data, status_code, headers = api_instance.update_languages_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->update_languages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;LanguageResource&gt;**](LanguageResource.md) | an array of existing languages |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

