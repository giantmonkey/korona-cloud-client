# KoronaClient::Customer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **BOOLEAN** | indicates whether the object is active for use or not | [optional] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] 
**address** | [**AddressInformation**](AddressInformation.md) |  | [optional] 
**birthday** | **DateTime** |  | [optional] 
**cards** | [**Array&lt;CustomerCard&gt;**](CustomerCard.md) |  | [optional] 
**company** | **String** |  | [optional] 
**customer_group** | [**ModelReference**](ModelReference.md) |  | [optional] 
**economic_zone** | [**ModelReference**](ModelReference.md) |  | [optional] 
**email** | **String** |  | [optional] 
**firstname** | **String** |  | [optional] 
**gender** | **String** |  | [optional] 
**informations** | [**Array&lt;CustomerInformation&gt;**](CustomerInformation.md) |  | [optional] 
**lastname** | **String** |  | [optional] 
**phone** | **String** |  | [optional] 
**tax_id** | **String** |  | [optional] 
**privacy_policy_accepted** | **BOOLEAN** |  | [optional] 
**marketing_contact_permitted** | **BOOLEAN** |  | [optional] 


