# KoronaClient::Supplier

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **BOOLEAN** | indicates whether the object is active for use or not | [optional] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] 
**additional_information** | **String** |  | [optional] 
**address** | [**ProductTransferInvolvedPartyInformationData**](ProductTransferInvolvedPartyInformationData.md) |  | [optional] 
**contact** | [**SupplierContact**](SupplierContact.md) |  | [optional] 
**contact_person** | [**SupplierContactPerson**](SupplierContactPerson.md) |  | [optional] 
**customer_number** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**payment** | [**SupplierPaymentInformation**](SupplierPaymentInformation.md) |  | [optional] 
**return_address** | [**ProductTransferInvolvedPartyInformationData**](ProductTransferInvolvedPartyInformationData.md) |  | [optional] 

