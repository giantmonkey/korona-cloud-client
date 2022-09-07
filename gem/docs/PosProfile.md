# KoronaCloudClient::PosProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **name** | **String** |  | [optional] |
| **automatic_cashier_logout_interval** | [**TimePeriod**](TimePeriod.md) |  | [optional] |
| **auto_receipt_print** | **Boolean** |  | [optional] |
| **force_closed_drawer** | **Boolean** |  | [optional] |
| **max_balance_attempts** | **Integer** |  | [optional] |
| **order_number_required** | **Boolean** |  | [optional] |
| **payment_service_configurations** | [**Array&lt;PaymentServiceConfiguration&gt;**](PaymentServiceConfiguration.md) |  | [optional] |
| **device_profile_configurations** | [**Array&lt;DeviceConfiguration&gt;**](DeviceConfiguration.md) |  | [optional] |
| **table_service_interval** | [**TimePeriod**](TimePeriod.md) |  | [optional] |
| **receipt_layout_configuration** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **automatic_end_of_day_interval** | [**TimePeriod**](TimePeriod.md) |  | [optional] |
| **cent_input** | **Boolean** |  | [optional] |
| **require_payment_amount_input** | **Boolean** |  | [optional] |
| **kiosk_mode** | **Boolean** |  | [optional] |
| **wide_screen_layout** | **Boolean** |  | [optional] |
| **automatic_payment_finalization** | **Boolean** |  | [optional] |
| **auto_reset_quick_access_pad** | **Boolean** |  | [optional] |
| **easy_repeat_product_enabled** | **Boolean** |  | [optional] |
| **external_system_calls_on_book_receipt** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **external_system_calls_on_reject_receipt** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **external_system_calls_on_total_receipt** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **external_system_calls_on_void_receipt** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **external_system_calls_on_book_delivery_note** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **external_system_calls_on_reverse_receipt** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **external_system_calls_on_login_cashier** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **external_system_calls_on_logout_cashier** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **designate_balance_difference** | **Boolean** |  | [optional] |
| **end_of_day_report_enabled** | **Boolean** |  | [optional] |
| **unknown_number_action** | **String** |  | [optional] |
| **unknown_number_external_system_call** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **invoicing_receipt_copies** | **Integer** |  | [optional] |
| **cashier_password_required** | **Boolean** |  | [optional] |
| **pos_theme** | **String** |  | [optional] |
| **template_product** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **digital_receipt** | **Boolean** |  | [optional] |
| **digital_signature** | **Boolean** |  | [optional] |
| **automatic_customer_creation_from_customer_order** | **Boolean** |  | [optional] |
| **master_data_refresh_interval** | [**TimePeriod**](TimePeriod.md) |  | [optional] |
| **mandatory_return_reason** | **Boolean** |  | [optional] |
| **restrict_to_one_parked_receipt** | **Boolean** |  | [optional] |
| **automatic_cashier_logout_lock_cashier** | **Boolean** |  | [optional] |
| **report_file** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **show_bank_notes_for_payment_denomination_only** | **Boolean** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::PosProfile.new(
  active: null,
  id: null,
  revision: null,
  number: null,
  name: null,
  automatic_cashier_logout_interval: null,
  auto_receipt_print: null,
  force_closed_drawer: null,
  max_balance_attempts: null,
  order_number_required: null,
  payment_service_configurations: null,
  device_profile_configurations: null,
  table_service_interval: null,
  receipt_layout_configuration: null,
  automatic_end_of_day_interval: null,
  cent_input: null,
  require_payment_amount_input: null,
  kiosk_mode: null,
  wide_screen_layout: null,
  automatic_payment_finalization: null,
  auto_reset_quick_access_pad: null,
  easy_repeat_product_enabled: null,
  external_system_calls_on_book_receipt: null,
  external_system_calls_on_reject_receipt: null,
  external_system_calls_on_total_receipt: null,
  external_system_calls_on_void_receipt: null,
  external_system_calls_on_book_delivery_note: null,
  external_system_calls_on_reverse_receipt: null,
  external_system_calls_on_login_cashier: null,
  external_system_calls_on_logout_cashier: null,
  designate_balance_difference: null,
  end_of_day_report_enabled: null,
  unknown_number_action: null,
  unknown_number_external_system_call: null,
  invoicing_receipt_copies: null,
  cashier_password_required: null,
  pos_theme: null,
  template_product: null,
  digital_receipt: null,
  digital_signature: null,
  automatic_customer_creation_from_customer_order: null,
  master_data_refresh_interval: null,
  mandatory_return_reason: null,
  restrict_to_one_parked_receipt: null,
  automatic_cashier_logout_lock_cashier: null,
  report_file: null,
  show_bank_notes_for_payment_denomination_only: null
)
```

