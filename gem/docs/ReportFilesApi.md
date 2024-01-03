# KoronaCloudClient::ReportFilesApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_report_files**](ReportFilesApi.md#add_report_files) | **POST** /accounts/{koronaAccountId}/reportFiles |  |
| [**delete_report_file**](ReportFilesApi.md#delete_report_file) | **DELETE** /accounts/{koronaAccountId}/reportFiles/{reportFileId} |  |
| [**delete_report_files**](ReportFilesApi.md#delete_report_files) | **DELETE** /accounts/{koronaAccountId}/reportFiles |  |
| [**get_report_file**](ReportFilesApi.md#get_report_file) | **GET** /accounts/{koronaAccountId}/reportFiles/{reportFileId} |  |
| [**get_report_files**](ReportFilesApi.md#get_report_files) | **GET** /accounts/{koronaAccountId}/reportFiles |  |
| [**update_report_file**](ReportFilesApi.md#update_report_file) | **PATCH** /accounts/{koronaAccountId}/reportFiles/{reportFileId} |  |
| [**update_report_files**](ReportFilesApi.md#update_report_files) | **PATCH** /accounts/{koronaAccountId}/reportFiles |  |


## add_report_files

> <Array<AddOrUpdateResult>> add_report_files(korona_account_id, report_file, opts)



adds a batch of new report files

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

api_instance = KoronaCloudClient::ReportFilesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
report_file = [KoronaCloudClient::ReportFile.new] # Array<ReportFile> | array of new report files
opts = {
  upsert: true, # Boolean | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead
  write_mode: 'DEFAULT' # String | DEFAULT = insert; ADD_OR_UPDATE = insert or update, overwrite all non-null fields; ADD_OR_REPLACE = insert or update, overwrite all fields
}

begin
  
  result = api_instance.add_report_files(korona_account_id, report_file, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReportFilesApi->add_report_files: #{e}"
end
```

#### Using the add_report_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_report_files_with_http_info(korona_account_id, report_file, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_report_files_with_http_info(korona_account_id, report_file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReportFilesApi->add_report_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **report_file** | [**Array&lt;ReportFile&gt;**](ReportFile.md) | array of new report files |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error; deprecated, use writeMode ADD_OR_UPDATE instead | [optional] |
| **write_mode** | **String** | DEFAULT &#x3D; insert; ADD_OR_UPDATE &#x3D; insert or update, overwrite all non-null fields; ADD_OR_REPLACE &#x3D; insert or update, overwrite all fields | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_report_file

> delete_report_file(korona_account_id, report_file_id)



deletes the single report file

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

api_instance = KoronaCloudClient::ReportFilesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
report_file_id = 'report_file_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  api_instance.delete_report_file(korona_account_id, report_file_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReportFilesApi->delete_report_file: #{e}"
end
```

#### Using the delete_report_file_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_file_with_http_info(korona_account_id, report_file_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_report_file_with_http_info(korona_account_id, report_file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReportFilesApi->delete_report_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **report_file_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_report_files

> <Array<AddOrUpdateResult>> delete_report_files(korona_account_id, report_file)



deletes a batch of report files

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

api_instance = KoronaCloudClient::ReportFilesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
report_file = [KoronaCloudClient::ReportFile.new] # Array<ReportFile> | array of existing Report Files (id or number required)

begin
  
  result = api_instance.delete_report_files(korona_account_id, report_file)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReportFilesApi->delete_report_files: #{e}"
end
```

#### Using the delete_report_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_report_files_with_http_info(korona_account_id, report_file)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_report_files_with_http_info(korona_account_id, report_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReportFilesApi->delete_report_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **report_file** | [**Array&lt;ReportFile&gt;**](ReportFile.md) | array of existing Report Files (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_report_file

> <ReportFile> get_report_file(korona_account_id, report_file_id)



returns the single report file

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

api_instance = KoronaCloudClient::ReportFilesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
report_file_id = 'report_file_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  
  result = api_instance.get_report_file(korona_account_id, report_file_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReportFilesApi->get_report_file: #{e}"
end
```

#### Using the get_report_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportFile>, Integer, Hash)> get_report_file_with_http_info(korona_account_id, report_file_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_report_file_with_http_info(korona_account_id, report_file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportFile>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReportFilesApi->get_report_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **report_file_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**ReportFile**](ReportFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_report_files

> <ResultListReportFile> get_report_files(korona_account_id, opts)



lists all report files

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

api_instance = KoronaCloudClient::ReportFilesApi.new
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
  
  result = api_instance.get_report_files(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReportFilesApi->get_report_files: #{e}"
end
```

#### Using the get_report_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListReportFile>, Integer, Hash)> get_report_files_with_http_info(korona_account_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_report_files_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListReportFile>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReportFilesApi->get_report_files_with_http_info: #{e}"
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

[**ResultListReportFile**](ResultListReportFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_report_file

> update_report_file(korona_account_id, report_file_id, report_file)



updates the single report file

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

api_instance = KoronaCloudClient::ReportFilesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
report_file_id = 'report_file_id_example' # String | id of the related object (important: id should match the uuid-format)
report_file = KoronaCloudClient::ReportFile.new # ReportFile | the properties to update of the report file

begin
  
  api_instance.update_report_file(korona_account_id, report_file_id, report_file)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReportFilesApi->update_report_file: #{e}"
end
```

#### Using the update_report_file_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_report_file_with_http_info(korona_account_id, report_file_id, report_file)

```ruby
begin
  
  data, status_code, headers = api_instance.update_report_file_with_http_info(korona_account_id, report_file_id, report_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReportFilesApi->update_report_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **report_file_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **report_file** | [**ReportFile**](ReportFile.md) | the properties to update of the report file |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_report_files

> <Array<AddOrUpdateResult>> update_report_files(korona_account_id, report_file)



updates a batch of report files

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

api_instance = KoronaCloudClient::ReportFilesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
report_file = [KoronaCloudClient::ReportFile.new] # Array<ReportFile> | array of existing report files (id or number required)

begin
  
  result = api_instance.update_report_files(korona_account_id, report_file)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReportFilesApi->update_report_files: #{e}"
end
```

#### Using the update_report_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_report_files_with_http_info(korona_account_id, report_file)

```ruby
begin
  
  data, status_code, headers = api_instance.update_report_files_with_http_info(korona_account_id, report_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling ReportFilesApi->update_report_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **report_file** | [**Array&lt;ReportFile&gt;**](ReportFile.md) | array of existing report files (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

