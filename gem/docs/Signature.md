# KoronaCloudClient::Signature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image** | **String** |  | [optional] |
| **transcription** | **String** |  | [optional] |
| **date** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Signature.new(
  image: null,
  transcription: null,
  date: 2018-11-22T09:40:21+01:00
)
```

