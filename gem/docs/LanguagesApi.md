# KoronaCloudClient::LanguagesApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_languages**](LanguagesApi.md#add_languages) | **POST** /accounts/{koronaAccountId}/languages |  |
| [**delete_language**](LanguagesApi.md#delete_language) | **DELETE** /accounts/{koronaAccountId}/languages/{languageId} |  |
| [**delete_languages**](LanguagesApi.md#delete_languages) | **DELETE** /accounts/{koronaAccountId}/languages |  |
| [**get_language**](LanguagesApi.md#get_language) | **GET** /accounts/{koronaAccountId}/languages/{languageId} |  |
| [**get_languages**](LanguagesApi.md#get_languages) | **GET** /accounts/{koronaAccountId}/languages |  |
| [**update_language**](LanguagesApi.md#update_language) | **PATCH** /accounts/{koronaAccountId}/languages/{languageId} |  |
| [**update_languages**](LanguagesApi.md#update_languages) | **PATCH** /accounts/{koronaAccountId}/languages |  |


## add_languages

> <Array<AddOrUpdateResult>> add_languages(korona_account_id, language, opts)



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
language = [KoronaCloudClient::Language.new] # Array<Language> | array of new languages
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_languages(korona_account_id, language, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->add_languages: #{e}"
end
```

#### Using the add_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_languages_with_http_info(korona_account_id, language, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_languages_with_http_info(korona_account_id, language, opts)
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
| **language** | [**Array&lt;Language&gt;**](Language.md) | array of new languages |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

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

> <Array<AddOrUpdateResult>> delete_languages(korona_account_id, language)



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
language = [KoronaCloudClient::Language.new] # Array<Language> | array of existing languages (id or number required)

begin
  
  result = api_instance.delete_languages(korona_account_id, language)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->delete_languages: #{e}"
end
```

#### Using the delete_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_languages_with_http_info(korona_account_id, language)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_languages_with_http_info(korona_account_id, language)
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
| **language** | [**Array&lt;Language&gt;**](Language.md) | array of existing languages (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_language

> <Language> get_language(korona_account_id, language_id)



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
  
  result = api_instance.get_language(korona_account_id, language_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->get_language: #{e}"
end
```

#### Using the get_language_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Language>, Integer, Hash)> get_language_with_http_info(korona_account_id, language_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_language_with_http_info(korona_account_id, language_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Language>
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

[**Language**](Language.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_languages

> <ResultListLanguage> get_languages(korona_account_id, opts)



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
  
  result = api_instance.get_languages(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->get_languages: #{e}"
end
```

#### Using the get_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListLanguage>, Integer, Hash)> get_languages_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_languages_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListLanguage>
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

[**ResultListLanguage**](ResultListLanguage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_language

> update_language(korona_account_id, language_id, language)



updates the single language; if [number] is set, the number of the object will change and the resource location as well

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
language = KoronaCloudClient::Language.new # Language | the properties to update of the language

begin
  
  api_instance.update_language(korona_account_id, language_id, language)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->update_language: #{e}"
end
```

#### Using the update_language_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_language_with_http_info(korona_account_id, language_id, language)

```ruby
begin
  
  data, status_code, headers = api_instance.update_language_with_http_info(korona_account_id, language_id, language)
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
| **language** | [**Language**](Language.md) | the properties to update of the language |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_languages

> <Array<AddOrUpdateResult>> update_languages(korona_account_id, language)



updates a batch of languages; [number] must be set in the objects, otherwise the object cannot be updated

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
language = [KoronaCloudClient::Language.new] # Array<Language> | an array of existing languages

begin
  
  result = api_instance.update_languages(korona_account_id, language)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling LanguagesApi->update_languages: #{e}"
end
```

#### Using the update_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_languages_with_http_info(korona_account_id, language)

```ruby
begin
  
  data, status_code, headers = api_instance.update_languages_with_http_info(korona_account_id, language)
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
| **language** | [**Array&lt;Language&gt;**](Language.md) | an array of existing languages |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

