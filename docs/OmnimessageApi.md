# MessenteApi::OmnimessageApi

All URIs are relative to *https://api.messente.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_scheduled_message**](OmnimessageApi.md#cancel_scheduled_message) | **DELETE** /omnimessage/{omnimessageId} | Cancels a scheduled Omnimessage.
[**send_omnimessage**](OmnimessageApi.md#send_omnimessage) | **POST** /omnimessage | Sends an Omnimessage.


# **cancel_scheduled_message**
> cancel_scheduled_message(omnimessage_id)

Cancels a scheduled Omnimessage.

### Example
```ruby
# load the gem
require 'messente_api'
# setup authorization
MessenteApi.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = MessenteApi::OmnimessageApi.new
omnimessage_id = 'omnimessage_id_example' # String | UUID of the scheduled Omnimessage to be cancelled

begin
  #Cancels a scheduled Omnimessage.
  api_instance.cancel_scheduled_message(omnimessage_id)
rescue MessenteApi::ApiError => e
  puts "Exception when calling OmnimessageApi->cancel_scheduled_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **omnimessage_id** | [**String**](.md)| UUID of the scheduled Omnimessage to be cancelled | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **send_omnimessage**
> OmniMessageCreateSuccessResponse send_omnimessage(omnimessage)

Sends an Omnimessage.

### Example
```ruby
# load the gem
require 'messente_api'
# setup authorization
MessenteApi.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = MessenteApi::OmnimessageApi.new
omnimessage = MessenteApi::Omnimessage.new # Omnimessage | Omnimessage to be sent

begin
  #Sends an Omnimessage.
  result = api_instance.send_omnimessage(omnimessage)
  p result
rescue MessenteApi::ApiError => e
  puts "Exception when calling OmnimessageApi->send_omnimessage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **omnimessage** | [**Omnimessage**](Omnimessage.md)| Omnimessage to be sent | 

### Return type

[**OmniMessageCreateSuccessResponse**](OmniMessageCreateSuccessResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



