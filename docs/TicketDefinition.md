# KoronaClient::TicketDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **BOOLEAN** | indicates whether the object is active for use or not | [optional] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] 
**activation_delay_after_purchase** | [**TimePeriod**](TimePeriod.md) |  | [optional] 
**entry_gates** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] 
**name** | **String** |  | [optional] 
**possible_admissions** | [**Admission**](Admission.md) |  | [optional] 
**validity_period_after_activation** | [**TimePeriod**](TimePeriod.md) |  | [optional] 
**validity_period_after_entrance** | [**TimePeriod**](TimePeriod.md) |  | [optional] 
**validity_period_daily** | [**Interval**](Interval.md) |  | [optional] 
**validity_period_total** | [**Interval**](Interval.md) |  | [optional] 


