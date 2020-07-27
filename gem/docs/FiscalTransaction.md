# KoronaCloudClient::FiscalTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_description** | **String** |  | [optional] 
**failed** | **Boolean** |  | [optional] 
**finish_time** | **DateTime** |  | [optional] 
**first_process_time** | **DateTime** |  | [optional] 
**fiscal_unit** | [**ModelReference**](ModelReference.md) |  | [optional] 
**number** | **Integer** |  | [optional] 
**print_link** | **String** |  | [optional] 
**print_qr_code** | **String** |  | [optional] 
**print_texts** | **Array&lt;String&gt;** |  | [optional] 
**process_data** | **String** |  | [optional] 
**process_type** | **String** |  | [optional] 
**signature** | **String** |  | [optional] 
**signature_counter** | **Integer** |  | [optional] 
**start_time** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'KoronaCloudClient'

instance = KoronaCloudClient::FiscalTransaction.new(error_description: null,
                                 failed: null,
                                 finish_time: null,
                                 first_process_time: null,
                                 fiscal_unit: null,
                                 number: null,
                                 print_link: null,
                                 print_qr_code: null,
                                 print_texts: null,
                                 process_data: null,
                                 process_type: null,
                                 signature: null,
                                 signature_counter: null,
                                 start_time: null)
```


