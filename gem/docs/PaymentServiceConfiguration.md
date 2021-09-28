# KoronaCloudClient::PaymentServiceConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_site_id** | **String** |  | [optional] |
| **merchant_name** | **String** |  | [optional] |
| **merchant_key** | **String** |  | [optional] |
| **device_url** | **String** |  | [optional] |
| **service_type** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PaymentServiceConfiguration.new(
  merchant_site_id: null,
  merchant_name: null,
  merchant_key: null,
  device_url: null,
  service_type: null
)
```

