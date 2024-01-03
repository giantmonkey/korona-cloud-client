# KoronaCloudClient::MessagesApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_messages**](MessagesApi.md#add_messages) | **POST** /accounts/{koronaAccountId}/messages |  |


## add_messages

> <Array<AddOrUpdateResult>> add_messages(korona_account_id, message)



sends a command type to points of sale

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

api_instance = KoronaCloudClient::MessagesApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
message = [KoronaCloudClient::Message.new] # Array<Message> | array of messages

begin
  
  result = api_instance.add_messages(korona_account_id, message)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling MessagesApi->add_messages: #{e}"
end
```

#### Using the add_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_messages_with_http_info(korona_account_id, message)

```ruby
begin
  
  data, status_code, headers = api_instance.add_messages_with_http_info(korona_account_id, message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling MessagesApi->add_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **message** | [**Array&lt;Message&gt;**](Message.md) | array of messages |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

