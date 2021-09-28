# KoronaCloudClient::PosBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **balance_attempts** | **Integer** |  | [optional] |
| **cashier** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **create_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **finish_time** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **summaries** | [**Array&lt;PosBalanceSummary&gt;**](PosBalanceSummary.md) |  | [optional] |
| **summary_changesets** | [**Array&lt;PosBalanceSummaryChangeset&gt;**](PosBalanceSummaryChangeset.md) |  | [optional] |
| **items** | [**Array&lt;PosBalanceItem&gt;**](PosBalanceItem.md) |  | [optional] |
| **total** | [**PosBalanceTotal**](PosBalanceTotal.md) |  | [optional] |
| **transaction_receipt_code** | **String** |  | [optional] |
| **z_count** | **Integer** |  | [optional] |
| **number_length** | **Integer** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PosBalance.new(
  active: null,
  id: null,
  number: null,
  revision: null,
  balance_attempts: null,
  cashier: null,
  create_time: 2018-11-22T09:40:21+01:00,
  finish_time: 2018-11-22T09:40:21+01:00,
  summaries: null,
  summary_changesets: null,
  items: null,
  total: null,
  transaction_receipt_code: null,
  z_count: null,
  number_length: null
)
```

