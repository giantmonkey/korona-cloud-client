# KoronaClient::Currency

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **BOOLEAN** | indicates whether the object is active for use or not | [optional] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] 
**cent_name** | **String** |  | [optional] 
**decimal_places** | **Integer** |  | [optional] 
**denominations** | [**Array&lt;CurrencyDenomination&gt;**](CurrencyDenomination.md) |  | [optional] 
**exchange_rates** | [**Array&lt;CurrencyExchangeRate&gt;**](CurrencyExchangeRate.md) |  | [optional] 
**key** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**system_currency** | **BOOLEAN** |  | [optional] 
**symbol** | **String** |  | [optional] 


