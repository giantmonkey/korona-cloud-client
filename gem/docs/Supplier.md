# KoronaCloudClient::Supplier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **additional_information** | **String** |  | [optional] |
| **address** | [**ProductTransferInvolvedPartyInformationData**](ProductTransferInvolvedPartyInformationData.md) |  | [optional] |
| **contact** | [**SupplierContact**](SupplierContact.md) |  | [optional] |
| **contact_person** | [**SupplierContactPerson**](SupplierContactPerson.md) |  | [optional] |
| **customer_number** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **payment** | [**SupplierPaymentInformation**](SupplierPaymentInformation.md) |  | [optional] |
| **return_address** | [**ProductTransferInvolvedPartyInformationData**](ProductTransferInvolvedPartyInformationData.md) |  | [optional] |
| **delivery_conditions** | **String** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Supplier.new(
  active: null,
  id: null,
  number: null,
  revision: null,
  additional_information: null,
  address: null,
  contact: null,
  contact_person: null,
  customer_number: null,
  name: null,
  payment: null,
  return_address: null,
  delivery_conditions: null
)
```

