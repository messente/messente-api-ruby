# MessenteApi::DeliveryReportApi

All URIs are relative to *https://api.messente.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**retrieve_delivery_report**](DeliveryReportApi.md#retrieve_delivery_report) | **GET** /omnimessage/{omnimessageId}/status | Retrieves the delivery report for the Omnimessage |


## retrieve_delivery_report

> <DeliveryReportResponse> retrieve_delivery_report(omnimessage_id)

Retrieves the delivery report for the Omnimessage

### Examples

```ruby
require 'time'
require 'messente_api'
# setup authorization
MessenteApi.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = MessenteApi::DeliveryReportApi.new
omnimessage_id = 'omnimessage_id_example' # String | UUID of the omnimessage to for which the delivery report is to be retrieved

begin
  # Retrieves the delivery report for the Omnimessage
  result = api_instance.retrieve_delivery_report(omnimessage_id)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling DeliveryReportApi->retrieve_delivery_report: #{e}"
end
```

#### Using the retrieve_delivery_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeliveryReportResponse>, Integer, Hash)> retrieve_delivery_report_with_http_info(omnimessage_id)

```ruby
begin
  # Retrieves the delivery report for the Omnimessage
  data, status_code, headers = api_instance.retrieve_delivery_report_with_http_info(omnimessage_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeliveryReportResponse>
rescue MessenteApi::ApiError => e
  puts "Error when calling DeliveryReportApi->retrieve_delivery_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **omnimessage_id** | **String** | UUID of the omnimessage to for which the delivery report is to be retrieved |  |

### Return type

[**DeliveryReportResponse**](DeliveryReportResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

