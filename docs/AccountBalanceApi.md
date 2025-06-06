# MessenteApi::AccountBalanceApi

All URIs are relative to *https://api.messente.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_account_balance**](AccountBalanceApi.md#get_account_balance) | **GET** /get_balance | Get account balance |
| [**get_account_balance_using_post**](AccountBalanceApi.md#get_account_balance_using_post) | **POST** /get_balance | Get account balance |


## get_account_balance

> String get_account_balance(username, password)

Get account balance

### Examples

```ruby
require 'time'
require 'messente_api'
# setup authorization
MessenteApi.configure do |config|
  # Configure API key authorization: apiPassword
  config.api_key['password'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['password'] = 'Bearer'

  # Configure API key authorization: apiUsername
  config.api_key['username'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['username'] = 'Bearer'
end

api_instance = MessenteApi::AccountBalanceApi.new
username = 'username_example' # String | The API username
password = 'password_example' # String | The API password

begin
  # Get account balance
  result = api_instance.get_account_balance(username, password)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling AccountBalanceApi->get_account_balance: #{e}"
end
```

#### Using the get_account_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_account_balance_with_http_info(username, password)

```ruby
begin
  # Get account balance
  data, status_code, headers = api_instance.get_account_balance_with_http_info(username, password)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue MessenteApi::ApiError => e
  puts "Error when calling AccountBalanceApi->get_account_balance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The API username |  |
| **password** | **String** | The API password |  |

### Return type

**String**

### Authorization

[apiPassword](../README.md#apiPassword), [apiUsername](../README.md#apiUsername)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain


## get_account_balance_using_post

> String get_account_balance_using_post(username, password)

Get account balance

### Examples

```ruby
require 'time'
require 'messente_api'
# setup authorization
MessenteApi.configure do |config|
  # Configure API key authorization: apiPassword
  config.api_key['password'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['password'] = 'Bearer'

  # Configure API key authorization: apiUsername
  config.api_key['username'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['username'] = 'Bearer'
end

api_instance = MessenteApi::AccountBalanceApi.new
username = 'username_example' # String | The API username
password = 'password_example' # String | The API password

begin
  # Get account balance
  result = api_instance.get_account_balance_using_post(username, password)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling AccountBalanceApi->get_account_balance_using_post: #{e}"
end
```

#### Using the get_account_balance_using_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_account_balance_using_post_with_http_info(username, password)

```ruby
begin
  # Get account balance
  data, status_code, headers = api_instance.get_account_balance_using_post_with_http_info(username, password)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue MessenteApi::ApiError => e
  puts "Error when calling AccountBalanceApi->get_account_balance_using_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The API username |  |
| **password** | **String** | The API password |  |

### Return type

**String**

### Authorization

[apiPassword](../README.md#apiPassword), [apiUsername](../README.md#apiUsername)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain

