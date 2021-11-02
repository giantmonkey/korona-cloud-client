# KoronaCloudClient::DispatchNotificationItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **shelf_life** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **amount** | [**DispatchNotificationItemAmount**](DispatchNotificationItemAmount.md) |  | [optional] |
| **identification** | [**DispatchNotificationItemIdentification**](DispatchNotificationItemIdentification.md) |  | [optional] |
| **index** | **Integer** |  | [optional][readonly] |
| **product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **container** | [**DispatchNotificationItemContainer**](DispatchNotificationItemContainer.md) |  | [optional] |
| **revision** | **Integer** |  | [optional][readonly] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::DispatchNotificationItem.new(
  name: null,
  shelf_life: 2018-11-22T09:40:21+01:00,
  amount: null,
  identification: null,
  index: null,
  product: null,
  container: null,
  revision: null
)
```

