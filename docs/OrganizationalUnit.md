# KoronaClient::OrganizationalUnit

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **BOOLEAN** | indicates whether the object is active for use or not | [optional] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] 
**address** | [**AddressInformation**](AddressInformation.md) |  | [optional] 
**economic_zone** | [**ModelReference**](ModelReference.md) |  | [optional] 
**name** | **String** |  | 
**parent_organizational_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 
**price_group** | [**ModelReference**](ModelReference.md) |  | [optional] 
**warehouse** | **BOOLEAN** |  | [optional] 


