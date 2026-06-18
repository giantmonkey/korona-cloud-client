# KoronaCloudClient::AccountMaxRevisions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** |  | [optional] |
| **additional_receipt_info_type** | **Integer** |  | [optional] |
| **assortment** | **Integer** |  | [optional] |
| **attendance** | **Integer** |  | [optional] |
| **cashier** | **Integer** |  | [optional] |
| **cashier_role** | **Integer** |  | [optional] |
| **cashier_verification_requirement** | **Integer** |  | [optional] |
| **commodity_group** | **Integer** |  | [optional] |
| **contra_account** | **Integer** |  | [optional] |
| **cost_center** | **Integer** |  | [optional] |
| **coupon** | **Integer** |  | [optional] |
| **currency** | **Integer** |  | [optional] |
| **customer** | **Integer** |  | [optional] |
| **customer_display_configuration** | **Integer** |  | [optional] |
| **customer_group** | **Integer** |  | [optional] |
| **customer_order** | **Integer** |  | [optional] |
| **data_exchange_configuration** | **Integer** |  | [optional] |
| **delivery_note** | **Integer** |  | [optional] |
| **device_configuration_variable** | **Integer** |  | [optional] |
| **discount_configuration** | **Integer** |  | [optional] |
| **discount_level** | **Integer** |  | [optional] |
| **dispatch_notification** | **Integer** |  | [optional] |
| **dispatch_notification_item** | **Integer** |  | [optional] |
| **economic_zone** | **Integer** |  | [optional] |
| **end_of_day_statement** | **Integer** |  | [optional] |
| **entry_gate** | **Integer** |  | [optional] |
| **event** | **Integer** |  | [optional] |
| **external_system_call** | **Integer** |  | [optional] |
| **fiscal_unit** | **Integer** |  | [optional] |
| **image** | **Integer** |  | [optional] |
| **info_text** | **Integer** |  | [optional] |
| **inventory** | **Integer** |  | [optional] |
| **inventory_list** | **Integer** |  | [optional] |
| **inventory_list_item** | **Integer** |  | [optional] |
| **item_sequence** | **Integer** |  | [optional] |
| **language** | **Integer** |  | [optional] |
| **loyalty_card** | **Integer** |  | [optional] |
| **number_range_configuration** | **Integer** |  | [optional] |
| **order_portal_supplier** | **Integer** |  | [optional] |
| **organizational_unit** | **Integer** |  | [optional] |
| **payment_method** | **Integer** |  | [optional] |
| **payment_method_category** | **Integer** |  | [optional] |
| **pos** | **Integer** |  | [optional] |
| **pos_balance** | **Integer** |  | [optional] |
| **pos_button_layout** | **Integer** |  | [optional] |
| **pos_page_layout_configuration** | **Integer** |  | [optional] |
| **pos_profile** | **Integer** |  | [optional] |
| **price** | **Integer** |  | [optional] |
| **price_group** | **Integer** |  | [optional] |
| **price_rule** | **Integer** |  | [optional] |
| **product** | **Integer** |  | [optional] |
| **production_type** | **Integer** |  | [optional] |
| **promotion** | **Integer** |  | [optional] |
| **receipt** | **Integer** |  | [optional] |
| **receipt_layout_configuration** | **Integer** |  | [optional] |
| **report_file** | **Integer** |  | [optional] |
| **revenue_account** | **Integer** |  | [optional] |
| **sales_tax** | **Integer** |  | [optional] |
| **sector** | **Integer** |  | [optional] |
| **special_price_configuration** | **Integer** |  | [optional] |
| **stock_adjustment** | **Integer** |  | [optional] |
| **stock_adjustment_item** | **Integer** |  | [optional] |
| **stock_order** | **Integer** |  | [optional] |
| **stock_order_item** | **Integer** |  | [optional] |
| **stock_receipt** | **Integer** |  | [optional] |
| **stock_receipt_item** | **Integer** |  | [optional] |
| **supplier** | **Integer** |  | [optional] |
| **tag** | **Integer** |  | [optional] |
| **ticket_definition** | **Integer** |  | [optional] |
| **time_tracking_entity** | **Integer** |  | [optional] |
| **time_tracking_entry** | **Integer** |  | [optional] |
| **user** | **Integer** |  | [optional] |
| **user_role** | **Integer** |  | [optional] |
| **voucher** | **Integer** |  | [optional] |
| **voucher_configuration** | **Integer** |  | [optional] |
| **voucher_transaction** | **Integer** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::AccountMaxRevisions.new(
  account: null,
  additional_receipt_info_type: null,
  assortment: null,
  attendance: null,
  cashier: null,
  cashier_role: null,
  cashier_verification_requirement: null,
  commodity_group: null,
  contra_account: null,
  cost_center: null,
  coupon: null,
  currency: null,
  customer: null,
  customer_display_configuration: null,
  customer_group: null,
  customer_order: null,
  data_exchange_configuration: null,
  delivery_note: null,
  device_configuration_variable: null,
  discount_configuration: null,
  discount_level: null,
  dispatch_notification: null,
  dispatch_notification_item: null,
  economic_zone: null,
  end_of_day_statement: null,
  entry_gate: null,
  event: null,
  external_system_call: null,
  fiscal_unit: null,
  image: null,
  info_text: null,
  inventory: null,
  inventory_list: null,
  inventory_list_item: null,
  item_sequence: null,
  language: null,
  loyalty_card: null,
  number_range_configuration: null,
  order_portal_supplier: null,
  organizational_unit: null,
  payment_method: null,
  payment_method_category: null,
  pos: null,
  pos_balance: null,
  pos_button_layout: null,
  pos_page_layout_configuration: null,
  pos_profile: null,
  price: null,
  price_group: null,
  price_rule: null,
  product: null,
  production_type: null,
  promotion: null,
  receipt: null,
  receipt_layout_configuration: null,
  report_file: null,
  revenue_account: null,
  sales_tax: null,
  sector: null,
  special_price_configuration: null,
  stock_adjustment: null,
  stock_adjustment_item: null,
  stock_order: null,
  stock_order_item: null,
  stock_receipt: null,
  stock_receipt_item: null,
  supplier: null,
  tag: null,
  ticket_definition: null,
  time_tracking_entity: null,
  time_tracking_entry: null,
  user: null,
  user_role: null,
  voucher: null,
  voucher_configuration: null,
  voucher_transaction: null
)
```

