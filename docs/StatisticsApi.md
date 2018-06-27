# KoronaClient::StatisticsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_revenue**](StatisticsApi.md#get_revenue) | **GET** /accounts/{koronaAccountId}/statistics/revenueData | lists information about the revenue in the given period
[**get_revenue_for_customer_groups**](StatisticsApi.md#get_revenue_for_customer_groups) | **GET** /accounts/{koronaAccountId}/statistics/revenueDataForCustomerGroups | lists the turnover per customer group during the given period
[**get_revenue_hourly**](StatisticsApi.md#get_revenue_hourly) | **GET** /accounts/{koronaAccountId}/statistics/revenueDataHourly | lists the turnover per hour during the given period
[**get_top_seller**](StatisticsApi.md#get_top_seller) | **GET** /accounts/{koronaAccountId}/statistics/topSeller | lists the top-seller


# **get_revenue**
> StatisticRevenueData get_revenue(korona_account_id, opts)

lists information about the revenue in the given period



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::StatisticsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  organizational_unit: "organizational_unit_example", # String | number of the organizational unit
  period: "period_example" # String | time period for comparison
}

begin
  #lists information about the revenue in the given period
  result = api_instance.get_revenue(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling StatisticsApi->get_revenue: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **organizational_unit** | **String**| number of the organizational unit | [optional] 
 **period** | **String**| time period for comparison | [optional] 

### Return type

[**StatisticRevenueData**](StatisticRevenueData.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_revenue_for_customer_groups**
> StatisticMapStringRevenueData get_revenue_for_customer_groups(korona_account_id, opts)

lists the turnover per customer group during the given period



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::StatisticsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  organizational_unit: "organizational_unit_example", # String | number of the organizational unit
  period: "period_example" # String | time period for comparison
}

begin
  #lists the turnover per customer group during the given period
  result = api_instance.get_revenue_for_customer_groups(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling StatisticsApi->get_revenue_for_customer_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **organizational_unit** | **String**| number of the organizational unit | [optional] 
 **period** | **String**| time period for comparison | [optional] 

### Return type

[**StatisticMapStringRevenueData**](StatisticMapStringRevenueData.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_revenue_hourly**
> StatisticMapStringRevenueData get_revenue_hourly(korona_account_id, opts)

lists the turnover per hour during the given period



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::StatisticsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  organizational_unit: "organizational_unit_example", # String | number of the organizational unit
  period: "period_example" # String | time period for comparison
}

begin
  #lists the turnover per hour during the given period
  result = api_instance.get_revenue_hourly(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling StatisticsApi->get_revenue_hourly: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **organizational_unit** | **String**| number of the organizational unit | [optional] 
 **period** | **String**| time period for comparison | [optional] 

### Return type

[**StatisticMapStringRevenueData**](StatisticMapStringRevenueData.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_top_seller**
> StatisticListTopSeller get_top_seller(korona_account_id, opts)

lists the top-seller



### Example
```ruby
# load the gem
require 'korona_client'
# setup authorization
KoronaClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaClient::StatisticsApi.new

korona_account_id = "korona_account_id_example" # String | the account id

opts = { 
  organizational_unit: "organizational_unit_example", # String | number of the organizational unit
  period: "period_example", # String | time period for comparison
  limit: 56 # Integer | maximum number of products to show
}

begin
  #lists the top-seller
  result = api_instance.get_top_seller(korona_account_id, opts)
  p result
rescue KoronaClient::ApiError => e
  puts "Exception when calling StatisticsApi->get_top_seller: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **korona_account_id** | **String**| the account id | 
 **organizational_unit** | **String**| number of the organizational unit | [optional] 
 **period** | **String**| time period for comparison | [optional] 
 **limit** | **Integer**| maximum number of products to show | [optional] 

### Return type

[**StatisticListTopSeller**](StatisticListTopSeller.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



