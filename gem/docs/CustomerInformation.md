# KoronaCloudClient::CustomerInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creator_name** | **String** |  | [optional] |
| **date** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **text** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::CustomerInformation.new(
  creator_name: null,
  date: 2018-11-22T09:40:21+01:00,
  text: null
)
```

