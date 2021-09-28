# KoronaCloudClient::NotFoundError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | a short description of the error in english | [optional] |
| **code** | **String** | the code for client-side evaluation of the error | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::NotFoundError.new(
  message: null,
  code: null
)
```

