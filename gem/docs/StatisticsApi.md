# KoronaCloudClient::StatisticsApi

All URIs are relative to *http://localhost:8080/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_revenue**](StatisticsApi.md#get_revenue) | **GET** /accounts/{koronaAccountId}/statistics/revenueData |  |
| [**get_revenue_for_customer_groups**](StatisticsApi.md#get_revenue_for_customer_groups) | **GET** /accounts/{koronaAccountId}/statistics/revenueDataForCustomerGroups |  |
| [**get_revenue_hourly**](StatisticsApi.md#get_revenue_hourly) | **GET** /accounts/{koronaAccountId}/statistics/revenueDataHourly |  |
| [**get_sector_revenue_by_month**](StatisticsApi.md#get_sector_revenue_by_month) | **GET** /accounts/{koronaAccountId}/statistics/sectorRevenueByMonth |  |
| [**get_top_seller**](StatisticsApi.md#get_top_seller) | **GET** /accounts/{koronaAccountId}/statistics/topSeller |  |


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


## get_sector_revenue_by_month

> <StatisticListSectorData> get_sector_revenue_by_month(korona_account_id, min_create_time, max_create_time, opts)



returns revenue grouped by sector, org, and month

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
min_create_time = Time.parse('2013-10-20T19:20:30+01:00') # Time | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
max_create_time = Time.parse('2013-10-20T19:20:30+01:00') # Time | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
opts = {
  sector: 'sector_example', # String | id or number of the sector
  organizational_unit: 'organizational_unit_example' # String | id or number of the organizational unit
}

begin
  
  result = api_instance.get_sector_revenue_by_month(korona_account_id, min_create_time, max_create_time, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StatisticsApi->get_sector_revenue_by_month: #{e}"
end
```

#### Using the get_sector_revenue_by_month_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatisticListSectorData>, Integer, Hash)> get_sector_revenue_by_month_with_http_info(korona_account_id, min_create_time, max_create_time, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_sector_revenue_by_month_with_http_info(korona_account_id, min_create_time, max_create_time, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatisticListSectorData>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling StatisticsApi->get_sector_revenue_by_month_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **min_create_time** | **Time** | min (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) |  |
| **max_create_time** | **Time** | max (inclusive) create time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional) |  |
| **sector** | **String** | id or number of the sector | [optional] |
| **organizational_unit** | **String** | id or number of the organizational unit | [optional] |

### Return type

[**StatisticListSectorData**](StatisticListSectorData.md)

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

