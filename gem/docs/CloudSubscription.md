# KoronaCloudClient::CloudSubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **valid_to** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::CloudSubscription.new(
  status: null,
  valid_to: 2018-11-22T09:40:21+01:00
)
```

