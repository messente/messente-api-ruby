# MessenteApi::NumberLookupApi

All URIs are relative to *https://api.messente.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sync_number_lookup**](NumberLookupApi.md#sync_number_lookup) | **POST** /hlr/sync | Requests info about a phone number



## sync_number_lookup

> SyncNumberLookupSuccess sync_number_lookup(sync_number_lookup)

Requests info about a phone number

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
sync_number_lookup = {"numbers":["+37251000000","+37251000001"]} # SyncNumberLookup | Numbers to lookup

begin
  #Requests info about a phone number
  result = api_instance.sync_number_lookup(sync_number_lookup)
  p result
rescue MessenteApi::ApiError => e
  puts "Exception when calling NumberLookupApi->sync_number_lookup: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sync_number_lookup** | [**SyncNumberLookup**](SyncNumberLookup.md)| Numbers to lookup | 

### Return type

[**SyncNumberLookupSuccess**](SyncNumberLookupSuccess.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

