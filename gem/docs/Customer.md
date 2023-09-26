# KoronaCloudClient::Customer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **address** | [**AddressInformation**](AddressInformation.md) |  | [optional] |
| **birthday** | **Time** | yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **cards** | [**Array&lt;CustomerCard&gt;**](CustomerCard.md) |  | [optional] |
| **company** | **String** |  | [optional] |
| **customer_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **economic_zone** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **email** | **String** |  | [optional] |
| **external_id** | **String** |  | [optional] |
| **firstname** | **String** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **informations** | [**Array&lt;CustomerInformation&gt;**](CustomerInformation.md) |  | [optional] |
| **lastname** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **tax_id** | **String** |  | [optional] |
| **privacy_policy_accepted** | **Boolean** |  | [optional] |
| **marketing_contact_permitted** | **Boolean** |  | [optional] |
| **create_time** | **Date** | yyyy-MM-dd | [optional][readonly] |
| **last_receipt_time** | **Date** | yyyy-MM-dd | [optional][readonly] |
| **use_email_for_digital_receipt** | **Boolean** |  | [optional] |
| **lock_delivery_note_sales** | **Boolean** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Customer.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  address: null,
  birthday: 2018-11-22T09:40:21+01:00,
  cards: null,
  company: null,
  customer_group: null,
  economic_zone: null,
  email: null,
  external_id: null,
  firstname: null,
  gender: null,
  informations: null,
  lastname: null,
  phone: null,
  tax_id: null,
  privacy_policy_accepted: null,
  marketing_contact_permitted: null,
  create_time: 2018-11-22,
  last_receipt_time: 2018-11-22,
  use_email_for_digital_receipt: null,
  lock_delivery_note_sales: null
)
```

