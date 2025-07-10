# MessenteApi::PricingApi

All URIs are relative to *https://api.messente.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_pricelist**](PricingApi.md#get_pricelist) | **GET** /pricelist | Get pricelist for account |
| [**get_prices**](PricingApi.md#get_prices) | **GET** /prices | Get pricing for a specific country |


## get_pricelist

> String get_pricelist(username, password)

Get pricelist for account

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

api_instance = MessenteApi::PricingApi.new
username = 'username_example' # String | The API username
password = 'password_example' # String | The API password

begin
  # Get pricelist for account
  result = api_instance.get_pricelist(username, password)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling PricingApi->get_pricelist: #{e}"
end
```

#### Using the get_pricelist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_pricelist_with_http_info(username, password)

```ruby
begin
  # Get pricelist for account
  data, status_code, headers = api_instance.get_pricelist_with_http_info(username, password)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue MessenteApi::ApiError => e
  puts "Error when calling PricingApi->get_pricelist_with_http_info: #{e}"
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


## get_prices

> <Price> get_prices(username, password, country, opts)

Get pricing for a specific country

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

api_instance = MessenteApi::PricingApi.new
username = 'username_example' # String | The API username
password = 'password_example' # String | The API password
country = 'EE' # String | The country code, for which to get the prices
opts = {
  format: 'format_example' # String | The format of the response. Can be either 'json' or 'xml'. If not specified, defaults to 'json'.
}

begin
  # Get pricing for a specific country
  result = api_instance.get_prices(username, password, country, opts)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling PricingApi->get_prices: #{e}"
end
```

#### Using the get_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Price>, Integer, Hash)> get_prices_with_http_info(username, password, country, opts)

```ruby
begin
  # Get pricing for a specific country
  data, status_code, headers = api_instance.get_prices_with_http_info(username, password, country, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Price>
rescue MessenteApi::ApiError => e
  puts "Error when calling PricingApi->get_prices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The API username |  |
| **password** | **String** | The API password |  |
| **country** | **String** | The country code, for which to get the prices |  |
| **format** | **String** | The format of the response. Can be either &#39;json&#39; or &#39;xml&#39;. If not specified, defaults to &#39;json&#39;. | [optional] |

### Return type

[**Price**](Price.md)

### Authorization

[apiPassword](../README.md#apiPassword), [apiUsername](../README.md#apiUsername)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml, text/plain; charset=utf-8

