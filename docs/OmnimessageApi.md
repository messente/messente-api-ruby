# MessenteApi::OmnimessageApi

All URIs are relative to *https://api.messente.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_scheduled_message**](OmnimessageApi.md#cancel_scheduled_message) | **DELETE** /omnimessage/{omnimessageId} | Cancels a scheduled Omnimessage |
| [**send_omnimessage**](OmnimessageApi.md#send_omnimessage) | **POST** /omnimessage | Sends an Omnimessage |


## cancel_scheduled_message

> Object cancel_scheduled_message(omnimessage_id)

Cancels a scheduled Omnimessage

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

api_instance = MessenteApi::OmnimessageApi.new
omnimessage_id = 'omnimessage_id_example' # String | UUID of the scheduled omnimessage to be cancelled

begin
  # Cancels a scheduled Omnimessage
  result = api_instance.cancel_scheduled_message(omnimessage_id)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling OmnimessageApi->cancel_scheduled_message: #{e}"
end
```

#### Using the cancel_scheduled_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> cancel_scheduled_message_with_http_info(omnimessage_id)

```ruby
begin
  # Cancels a scheduled Omnimessage
  data, status_code, headers = api_instance.cancel_scheduled_message_with_http_info(omnimessage_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue MessenteApi::ApiError => e
  puts "Error when calling OmnimessageApi->cancel_scheduled_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **omnimessage_id** | **String** | UUID of the scheduled omnimessage to be cancelled |  |

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_omnimessage

> <OmniMessageCreateSuccessResponse> send_omnimessage(omnimessage)

Sends an Omnimessage

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

api_instance = MessenteApi::OmnimessageApi.new
omnimessage = MessenteApi::Omnimessage.new({to: 'to_example', messages: [MessenteApi::SMS.new({text: 'Hello world!'})]}) # Omnimessage | Omnimessage to be sent

begin
  # Sends an Omnimessage
  result = api_instance.send_omnimessage(omnimessage)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling OmnimessageApi->send_omnimessage: #{e}"
end
```

#### Using the send_omnimessage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OmniMessageCreateSuccessResponse>, Integer, Hash)> send_omnimessage_with_http_info(omnimessage)

```ruby
begin
  # Sends an Omnimessage
  data, status_code, headers = api_instance.send_omnimessage_with_http_info(omnimessage)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OmniMessageCreateSuccessResponse>
rescue MessenteApi::ApiError => e
  puts "Error when calling OmnimessageApi->send_omnimessage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **omnimessage** | [**Omnimessage**](Omnimessage.md) | Omnimessage to be sent |  |

### Return type

[**OmniMessageCreateSuccessResponse**](OmniMessageCreateSuccessResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

