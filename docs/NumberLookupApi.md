# MessenteApi::NumberLookupApi

All URIs are relative to *https://api.messente.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_info**](NumberLookupApi.md#fetch_info) | **POST** /hlr/sync | Requests info about phone numbers



## fetch_info

> SyncNumberLookupSuccess fetch_info(numbers_to_investigate)

Requests info about phone numbers

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

api_instance = MessenteApi::NumberLookupApi.new
numbers_to_investigate = {"numbers":["+37251000000","+37251000001"]} # NumbersToInvestigate | Numbers for lookup

begin
  #Requests info about phone numbers
  result = api_instance.fetch_info(numbers_to_investigate)
  p result
rescue MessenteApi::ApiError => e
  puts "Exception when calling NumberLookupApi->fetch_info: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **numbers_to_investigate** | [**NumbersToInvestigate**](NumbersToInvestigate.md)| Numbers for lookup | 

### Return type

[**SyncNumberLookupSuccess**](SyncNumberLookupSuccess.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

