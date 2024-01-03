# KoronaCloudClient::CashierVerificationRequirementsApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_cashier_verification_requirements**](CashierVerificationRequirementsApi.md#add_cashier_verification_requirements) | **POST** /accounts/{koronaAccountId}/cashierVerificationRequirements |  |
| [**delete_cashier_verification_requirements**](CashierVerificationRequirementsApi.md#delete_cashier_verification_requirements) | **DELETE** /accounts/{koronaAccountId}/cashierVerificationRequirements |  |
| [**get_cashier_verification_requirement**](CashierVerificationRequirementsApi.md#get_cashier_verification_requirement) | **GET** /accounts/{koronaAccountId}/cashierVerificationRequirements/{cashierVerificationRequirementId} |  |
| [**get_cashier_verification_requirements**](CashierVerificationRequirementsApi.md#get_cashier_verification_requirements) | **GET** /accounts/{koronaAccountId}/cashierVerificationRequirements |  |
| [**update_cashier_verification_requirements**](CashierVerificationRequirementsApi.md#update_cashier_verification_requirements) | **PATCH** /accounts/{koronaAccountId}/cashierVerificationRequirements |  |


## add_cashier_verification_requirements

> <Array<AddOrUpdateResult>> add_cashier_verification_requirements(korona_account_id, cashier_verification_requirement, opts)



adds a batch of new cashier verification requirements

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

api_instance = KoronaCloudClient::CashierVerificationRequirementsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cashier_verification_requirement = [KoronaCloudClient::CashierVerificationRequirement.new] # Array<CashierVerificationRequirement> | array of new cashier verification requirements
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_cashier_verification_requirements(korona_account_id, cashier_verification_requirement, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierVerificationRequirementsApi->add_cashier_verification_requirements: #{e}"
end
```

#### Using the add_cashier_verification_requirements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_cashier_verification_requirements_with_http_info(korona_account_id, cashier_verification_requirement, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_cashier_verification_requirements_with_http_info(korona_account_id, cashier_verification_requirement, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierVerificationRequirementsApi->add_cashier_verification_requirements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cashier_verification_requirement** | [**Array&lt;CashierVerificationRequirement&gt;**](CashierVerificationRequirement.md) | array of new cashier verification requirements |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_cashier_verification_requirements

> <Array<AddOrUpdateResult>> delete_cashier_verification_requirements(korona_account_id, cashier_verification_requirement)



deletes a batch of cashier verification requirements

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

api_instance = KoronaCloudClient::CashierVerificationRequirementsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cashier_verification_requirement = [KoronaCloudClient::CashierVerificationRequirement.new] # Array<CashierVerificationRequirement> | array of existing cashier verification requirements (id or number required)

begin
  
  result = api_instance.delete_cashier_verification_requirements(korona_account_id, cashier_verification_requirement)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierVerificationRequirementsApi->delete_cashier_verification_requirements: #{e}"
end
```

#### Using the delete_cashier_verification_requirements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_cashier_verification_requirements_with_http_info(korona_account_id, cashier_verification_requirement)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_cashier_verification_requirements_with_http_info(korona_account_id, cashier_verification_requirement)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierVerificationRequirementsApi->delete_cashier_verification_requirements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cashier_verification_requirement** | [**Array&lt;CashierVerificationRequirement&gt;**](CashierVerificationRequirement.md) | array of existing cashier verification requirements (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_cashier_verification_requirement

> <CashierVerificationRequirement> get_cashier_verification_requirement(korona_account_id, cashier_verification_requirement_id)



returns the single cashier verification requirement

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

api_instance = KoronaCloudClient::CashierVerificationRequirementsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cashier_verification_requirement_id = 'cashier_verification_requirement_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_cashier_verification_requirement(korona_account_id, cashier_verification_requirement_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierVerificationRequirementsApi->get_cashier_verification_requirement: #{e}"
end
```

#### Using the get_cashier_verification_requirement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CashierVerificationRequirement>, Integer, Hash)> get_cashier_verification_requirement_with_http_info(korona_account_id, cashier_verification_requirement_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_cashier_verification_requirement_with_http_info(korona_account_id, cashier_verification_requirement_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CashierVerificationRequirement>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierVerificationRequirementsApi->get_cashier_verification_requirement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cashier_verification_requirement_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**CashierVerificationRequirement**](CashierVerificationRequirement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cashier_verification_requirements

> <ResultListCashierVerificationRequirement> get_cashier_verification_requirements(korona_account_id, opts)



lists all cashier verification requirements

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

api_instance = KoronaCloudClient::CashierVerificationRequirementsApi.new
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
  
  result = api_instance.get_cashier_verification_requirements(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierVerificationRequirementsApi->get_cashier_verification_requirements: #{e}"
end
```

#### Using the get_cashier_verification_requirements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListCashierVerificationRequirement>, Integer, Hash)> get_cashier_verification_requirements_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_cashier_verification_requirements_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListCashierVerificationRequirement>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierVerificationRequirementsApi->get_cashier_verification_requirements_with_http_info: #{e}"
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

[**ResultListCashierVerificationRequirement**](ResultListCashierVerificationRequirement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_cashier_verification_requirements

> <Array<AddOrUpdateResult>> update_cashier_verification_requirements(korona_account_id, cashier_verification_requirement)



updates a batch of cashier verification requirements

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

api_instance = KoronaCloudClient::CashierVerificationRequirementsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
cashier_verification_requirement = [KoronaCloudClient::CashierVerificationRequirement.new] # Array<CashierVerificationRequirement> | array of existing cashier verification requirements (id or number required)

begin
  
  result = api_instance.update_cashier_verification_requirements(korona_account_id, cashier_verification_requirement)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierVerificationRequirementsApi->update_cashier_verification_requirements: #{e}"
end
```

#### Using the update_cashier_verification_requirements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_cashier_verification_requirements_with_http_info(korona_account_id, cashier_verification_requirement)

```ruby
begin
  
  data, status_code, headers = api_instance.update_cashier_verification_requirements_with_http_info(korona_account_id, cashier_verification_requirement)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling CashierVerificationRequirementsApi->update_cashier_verification_requirements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **cashier_verification_requirement** | [**Array&lt;CashierVerificationRequirement&gt;**](CashierVerificationRequirement.md) | array of existing cashier verification requirements (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

