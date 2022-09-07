# KoronaCloudClient::TicketDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **activation_delay_after_purchase** | [**TimePeriod**](TimePeriod.md) |  | [optional] |
| **count_statistically** | **Boolean** |  | [optional] |
| **entry_gates** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **entry_signal** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **possible_admissions** | [**Admission**](Admission.md) |  | [optional] |
| **re_entry_lock** | **Integer** |  | [optional] |
| **tag** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **validity_period_after_activation** | [**TimePeriod**](TimePeriod.md) |  | [optional] |
| **validity_period_after_entrance** | [**TimePeriod**](TimePeriod.md) |  | [optional] |
| **validity_period_daily** | [**Interval**](Interval.md) |  | [optional] |
| **validity_period_total** | [**Interval**](Interval.md) |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::TicketDefinition.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  activation_delay_after_purchase: null,
  count_statistically: null,
  entry_gates: null,
  entry_signal: null,
  name: null,
  possible_admissions: null,
  re_entry_lock: null,
  tag: null,
  validity_period_after_activation: null,
  validity_period_after_entrance: null,
  validity_period_daily: null,
  validity_period_total: null
)
```

