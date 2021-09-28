# KoronaCloudClient::StatisticsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_revenue**](StatisticsApi.md#get_revenue) | **GET** /accounts/{koronaAccountId}/statistics/revenueData | returns information about the revenue in the given period |
| [**get_revenue_for_customer_groups**](StatisticsApi.md#get_revenue_for_customer_groups) | **GET** /accounts/{koronaAccountId}/statistics/revenueDataForCustomerGroups | returns the turnover per customer group during the given period |
| [**get_revenue_hourly**](StatisticsApi.md#get_revenue_hourly) | **GET** /accounts/{koronaAccountId}/statistics/revenueDataHourly | returns the turnover per hour during the given period |
| [**get_top_seller**](StatisticsApi.md#get_top_seller) | **GET** /accounts/{koronaAccountId}/statistics/topSeller | returns the top-seller |


## get_revenue

> <StatisticRevenueData> get_revenue(korona_account_id, opts)

returns information about the revenue in the given period

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

api_instance = KoronaCloudClient::StatisticsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  organizational_unit: 'organizational_unit_example', # String | number of the organizational unit
  period: 'DAY' # String | time period for comparison
}

begin
  # returns information about the revenue in the given period
  result = api_instance.get_revenue(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StatisticsApi->get_revenue: #{e}"
end
```

#### Using the get_revenue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatisticRevenueData>, Integer, Hash)> get_revenue_with_http_info(korona_account_id, opts)

```ruby
begin
  # returns information about the revenue in the given period
  data, status_code, headers = api_instance.get_revenue_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatisticRevenueData>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StatisticsApi->get_revenue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit** | **String** | number of the organizational unit | [optional] |
| **period** | **String** | time period for comparison | [optional] |

### Return type

[**StatisticRevenueData**](StatisticRevenueData.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_revenue_for_customer_groups

> <StatisticMapStringRevenueData> get_revenue_for_customer_groups(korona_account_id, opts)

returns the turnover per customer group during the given period

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

api_instance = KoronaCloudClient::StatisticsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  organizational_unit: 'organizational_unit_example', # String | number of the organizational unit
  period: 'DAY' # String | time period for comparison
}

begin
  # returns the turnover per customer group during the given period
  result = api_instance.get_revenue_for_customer_groups(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StatisticsApi->get_revenue_for_customer_groups: #{e}"
end
```

#### Using the get_revenue_for_customer_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatisticMapStringRevenueData>, Integer, Hash)> get_revenue_for_customer_groups_with_http_info(korona_account_id, opts)

```ruby
begin
  # returns the turnover per customer group during the given period
  data, status_code, headers = api_instance.get_revenue_for_customer_groups_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatisticMapStringRevenueData>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StatisticsApi->get_revenue_for_customer_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit** | **String** | number of the organizational unit | [optional] |
| **period** | **String** | time period for comparison | [optional] |

### Return type

[**StatisticMapStringRevenueData**](StatisticMapStringRevenueData.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_revenue_hourly

> <StatisticMapStringRevenueData> get_revenue_hourly(korona_account_id, opts)

returns the turnover per hour during the given period

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

api_instance = KoronaCloudClient::StatisticsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  organizational_unit: 'organizational_unit_example', # String | number of the organizational unit
  period: 'DAY' # String | time period for comparison
}

begin
  # returns the turnover per hour during the given period
  result = api_instance.get_revenue_hourly(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StatisticsApi->get_revenue_hourly: #{e}"
end
```

#### Using the get_revenue_hourly_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatisticMapStringRevenueData>, Integer, Hash)> get_revenue_hourly_with_http_info(korona_account_id, opts)

```ruby
begin
  # returns the turnover per hour during the given period
  data, status_code, headers = api_instance.get_revenue_hourly_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatisticMapStringRevenueData>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StatisticsApi->get_revenue_hourly_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit** | **String** | number of the organizational unit | [optional] |
| **period** | **String** | time period for comparison | [optional] |

### Return type

[**StatisticMapStringRevenueData**](StatisticMapStringRevenueData.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_top_seller

> <StatisticListTopSeller> get_top_seller(korona_account_id, opts)

returns the top-seller

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

api_instance = KoronaCloudClient::StatisticsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  organizational_unit: 'organizational_unit_example', # String | number of the organizational unit
  period: 'DAY', # String | time period for comparison
  limit: 56 # Integer | maximum number of products to show
}

begin
  # returns the top-seller
  result = api_instance.get_top_seller(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StatisticsApi->get_top_seller: #{e}"
end
```

#### Using the get_top_seller_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatisticListTopSeller>, Integer, Hash)> get_top_seller_with_http_info(korona_account_id, opts)

```ruby
begin
  # returns the top-seller
  data, status_code, headers = api_instance.get_top_seller_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatisticListTopSeller>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StatisticsApi->get_top_seller_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **organizational_unit** | **String** | number of the organizational unit | [optional] |
| **period** | **String** | time period for comparison | [optional] |
| **limit** | **Integer** | maximum number of products to show | [optional] |

### Return type

[**StatisticListTopSeller**](StatisticListTopSeller.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

