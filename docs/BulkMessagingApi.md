# MessenteApi::BulkMessagingApi

All URIs are relative to *https://api.messente.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**send_bulk_omnimessage**](BulkMessagingApi.md#send_bulk_omnimessage) | **POST** /omnimessages | Sends a bulk Omnimessage |


## send_bulk_omnimessage

> <BulkOmniMessageCreateSuccessResponse> send_bulk_omnimessage(bulk_omnimessage)

Sends a bulk Omnimessage

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

api_instance = MessenteApi::BulkMessagingApi.new
bulk_omnimessage = MessenteApi::BulkOmnimessage.new({messages: [MessenteApi::Omnimessage.new({to: 'to_example', messages: [MessenteApi::SMS.new({text: 'Hello world!'})]})]}) # BulkOmnimessage | Bulk Omnimessage to be sent

begin
  # Sends a bulk Omnimessage
  result = api_instance.send_bulk_omnimessage(bulk_omnimessage)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling BulkMessagingApi->send_bulk_omnimessage: #{e}"
end
```

#### Using the send_bulk_omnimessage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BulkOmniMessageCreateSuccessResponse>, Integer, Hash)> send_bulk_omnimessage_with_http_info(bulk_omnimessage)

```ruby
begin
  # Sends a bulk Omnimessage
  data, status_code, headers = api_instance.send_bulk_omnimessage_with_http_info(bulk_omnimessage)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BulkOmniMessageCreateSuccessResponse>
rescue MessenteApi::ApiError => e
  puts "Error when calling BulkMessagingApi->send_bulk_omnimessage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bulk_omnimessage** | [**BulkOmnimessage**](BulkOmnimessage.md) | Bulk Omnimessage to be sent |  |

### Return type

[**BulkOmniMessageCreateSuccessResponse**](BulkOmniMessageCreateSuccessResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

