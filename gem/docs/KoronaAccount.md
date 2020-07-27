# KoronaCloudClient::KoronaAccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** | indicates whether the object is active for use or not | [optional] [readonly] 
**id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] 
**number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] 
**revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional] [readonly] 
**active_package_details** | [**Array&lt;CloudSubscriptionDetails&gt;**](CloudSubscriptionDetails.md) |  | [optional] 
**active_packages** | **Array&lt;String&gt;** |  | [optional] 
**address** | [**AddressInformation**](AddressInformation.md) |  | [optional] 
**cloud_subscription** | [**CloudSubscription**](CloudSubscription.md) |  | [optional] 
**company** | **String** |  | [optional] 
**identification** | [**CompanyIdentification**](CompanyIdentification.md) |  | [optional] 
**test_mode** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::KoronaAccount.new(active: null,
                                 id: null,
                                 number: null,
                                 revision: null,
                                 active_package_details: null,
                                 active_packages: null,
                                 address: null,
                                 cloud_subscription: null,
                                 company: null,
                                 identification: null,
                                 test_mode: null)
```


