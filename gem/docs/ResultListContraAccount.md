# KoronaCloudClient::ResultListContraAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_page** | **Integer** | number of the current page, starting from 1 |  |
| **links** | **Hash&lt;String, String&gt;** | navigation links (previous, self, next) |  |
| **pages_total** | **Integer** | pages count total |  |
| **results** | [**Array&lt;ContraAccount&gt;**](ContraAccount.md) | result list |  |
| **results_of_page** | **Integer** | result count of the current page |  |
| **results_total** | **Integer** | result count total |  |
| **max_revision** | **Integer** | highest revision for this data type |  |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ResultListContraAccount.new(
  current_page: null,
  links: null,
  pages_total: null,
  results: null,
  results_of_page: null,
  results_total: null,
  max_revision: null
)
```

