# MessenteApi::BlacklistApi

All URIs are relative to *https://api.messente.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_to_blacklist**](BlacklistApi.md#add_to_blacklist) | **POST** /phonebook/blacklist | Adds a phone number to the blacklist
[**delete_from_blacklist**](BlacklistApi.md#delete_from_blacklist) | **DELETE** /phonebook/blacklist/{phone} | Deletes a phone number from the blacklist
[**fetch_blacklist**](BlacklistApi.md#fetch_blacklist) | **GET** /phonebook/blacklist | Returns all blacklisted phone numbers
[**is_blacklisted**](BlacklistApi.md#is_blacklisted) | **GET** /phonebook/blacklist/{phone} | Checks if a phone number is blacklisted



## add_to_blacklist

> add_to_blacklist(number_to_blacklist)

Adds a phone number to the blacklist

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

api_instance = MessenteApi::BlacklistApi.new
number_to_blacklist = MessenteApi::NumberToBlacklist.new # NumberToBlacklist | Phone number to be blacklisted

begin
  #Adds a phone number to the blacklist
  api_instance.add_to_blacklist(number_to_blacklist)
rescue MessenteApi::ApiError => e
  puts "Exception when calling BlacklistApi->add_to_blacklist: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number_to_blacklist** | [**NumberToBlacklist**](NumberToBlacklist.md)| Phone number to be blacklisted | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_from_blacklist

> delete_from_blacklist(phone)

Deletes a phone number from the blacklist

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

api_instance = MessenteApi::BlacklistApi.new
phone = 'phone_example' # String | A phone number

begin
  #Deletes a phone number from the blacklist
  api_instance.delete_from_blacklist(phone)
rescue MessenteApi::ApiError => e
  puts "Exception when calling BlacklistApi->delete_from_blacklist: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone** | **String**| A phone number | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## fetch_blacklist

> FetchBlacklistSuccess fetch_blacklist

Returns all blacklisted phone numbers

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

api_instance = MessenteApi::BlacklistApi.new

begin
  #Returns all blacklisted phone numbers
  result = api_instance.fetch_blacklist
  p result
rescue MessenteApi::ApiError => e
  puts "Exception when calling BlacklistApi->fetch_blacklist: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**FetchBlacklistSuccess**](FetchBlacklistSuccess.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## is_blacklisted

> is_blacklisted(phone)

Checks if a phone number is blacklisted

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

api_instance = MessenteApi::BlacklistApi.new
phone = 'phone_example' # String | A phone number

begin
  #Checks if a phone number is blacklisted
  api_instance.is_blacklisted(phone)
rescue MessenteApi::ApiError => e
  puts "Exception when calling BlacklistApi->is_blacklisted: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone** | **String**| A phone number | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

