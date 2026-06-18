# KoronaCloudClient::ResultListExternalSystemCall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_page** | **Integer** | number of the current page, starting from 1 |  |
| **pages_total** | **Integer** | pages count total |  |
| **results** | [**Array&lt;ExternalSystemCall&gt;**](ExternalSystemCall.md) |  |  |
| **results_of_page** | **Integer** | result count of the current page |  |
| **results_total** | **Integer** | result count total |  |
| **max_revision** | **Integer** | highest revision for this data type | [optional] |
| **links** | **Hash&lt;String, String&gt;** | navigation links (previous, self, next) |  |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ResultListExternalSystemCall.new(
  current_page: null,
  pages_total: null,
  results: null,
  results_of_page: null,
  results_total: null,
  max_revision: null,
  links: null
)
```

