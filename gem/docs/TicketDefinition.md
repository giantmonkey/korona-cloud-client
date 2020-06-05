# KoronaCloudClient::TicketDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | indicates whether the object is active for use or not | [optional] [readonly] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] [readonly] 
**activation_delay_after_purchase** | [**TimePeriod**](TimePeriod.md) |  | [optional] 
**entry_gates** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] 
**name** | **String** |  | [optional] 
**possible_admissions** | [**Admission**](Admission.md) |  | [optional] 
**validity_period_after_activation** | [**TimePeriod**](TimePeriod.md) |  | [optional] 
**validity_period_after_entrance** | [**TimePeriod**](TimePeriod.md) |  | [optional] 
**validity_period_daily** | [**Interval**](Interval.md) |  | [optional] 
**validity_period_total** | [**Interval**](Interval.md) |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::TicketDefinition.new(active: null,
                                 id: null,
                                 number: null,
                                 revision: null,
                                 activation_delay_after_purchase: null,
                                 entry_gates: null,
                                 name: null,
                                 possible_admissions: null,
                                 validity_period_after_activation: null,
                                 validity_period_after_entrance: null,
                                 validity_period_daily: null,
                                 validity_period_total: null)
```


