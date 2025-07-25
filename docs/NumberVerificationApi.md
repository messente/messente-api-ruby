# MessenteApi::NumberVerificationApi

All URIs are relative to *https://api.messente.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**verify_number**](NumberVerificationApi.md#verify_number) | **POST** /verify/start | verify number |
| [**verify_pin**](NumberVerificationApi.md#verify_pin) | **POST** /verify/pin | verified the PIN code entered by the user. |


## verify_number

> String verify_number(username, password, to, opts)

verify number

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

api_instance = MessenteApi::NumberVerificationApi.new
username = 'username_example' # String | The API username
password = 'password_example' # String | The API password
to = 'to_example' # String | Receiver's phone number with the country code
opts = {
  template: 'template_example', # String | Template of the message, including PIN code. Placeholder for PIN code is <PIN>. When not set, default template is used: \"Your Verification PIN code is <PIN>\". 
  pin_length: 'pin_length_example', # String | Length of the PIN code. Minumum 4 digits, maximum 16. Defaults to 4.
  from: 'from_example', # String | Sender name. When not set, the default Sender name \"Verigator\" is used. This sender ID also needs to be added to your account beforehand.
  max_tries: 'max_tries_example', # String | Maximum number of times the PIN code is sent in total. Defaults to \"2\" - initial PIN code and one retry. It is discouraged to set this value to \"1\" as only the initial PIN code is sent and retry is disabled.  
  retry_delay: 'retry_delay_example', # String | For how long (in seconds) to wait for next retry, if the correct PIN code has not been entered yet? Defaults to 30 seconds.
  validity: 'validity_example', # String | For how long (in seconds) is the PIN code valid. Defaults to 5 minutes (300 seconds). Maximum 30 minutes (1800 seconds).
  ip: 'ip_example', # String | IP address of the client making verification request.
  browser: 'browser_example', # String | User Agent of the browser. For example \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36\".
  cookie: 'cookie_example' # String | Unique cookie assigned to this session. If a user tries logging in with the same cookie present, user is automatically logged in and no PIN code verification is needed.
}

begin
  # verify number
  result = api_instance.verify_number(username, password, to, opts)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling NumberVerificationApi->verify_number: #{e}"
end
```

#### Using the verify_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> verify_number_with_http_info(username, password, to, opts)

```ruby
begin
  # verify number
  data, status_code, headers = api_instance.verify_number_with_http_info(username, password, to, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue MessenteApi::ApiError => e
  puts "Error when calling NumberVerificationApi->verify_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The API username |  |
| **password** | **String** | The API password |  |
| **to** | **String** | Receiver&#39;s phone number with the country code |  |
| **template** | **String** | Template of the message, including PIN code. Placeholder for PIN code is &lt;PIN&gt;. When not set, default template is used: \&quot;Your Verification PIN code is &lt;PIN&gt;\&quot;.  | [optional] |
| **pin_length** | **String** | Length of the PIN code. Minumum 4 digits, maximum 16. Defaults to 4. | [optional] |
| **from** | **String** | Sender name. When not set, the default Sender name \&quot;Verigator\&quot; is used. This sender ID also needs to be added to your account beforehand. | [optional] |
| **max_tries** | **String** | Maximum number of times the PIN code is sent in total. Defaults to \&quot;2\&quot; - initial PIN code and one retry. It is discouraged to set this value to \&quot;1\&quot; as only the initial PIN code is sent and retry is disabled.   | [optional] |
| **retry_delay** | **String** | For how long (in seconds) to wait for next retry, if the correct PIN code has not been entered yet? Defaults to 30 seconds. | [optional] |
| **validity** | **String** | For how long (in seconds) is the PIN code valid. Defaults to 5 minutes (300 seconds). Maximum 30 minutes (1800 seconds). | [optional] |
| **ip** | **String** | IP address of the client making verification request. | [optional] |
| **browser** | **String** | User Agent of the browser. For example \&quot;Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36\&quot;. | [optional] |
| **cookie** | **String** | Unique cookie assigned to this session. If a user tries logging in with the same cookie present, user is automatically logged in and no PIN code verification is needed. | [optional] |

### Return type

**String**

### Authorization

[apiPassword](../README.md#apiPassword), [apiUsername](../README.md#apiUsername)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain


## verify_pin

> String verify_pin(username, password, verification_id, pin, opts)

verified the PIN code entered by the user.

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

api_instance = MessenteApi::NumberVerificationApi.new
username = 'username_example' # String | The API username
password = 'password_example' # String | The API password
verification_id = 'verification_id_example' # String | Verification ID returned by the successful verification request.
pin = 'pin_example' # String | PIN code entered by the user.
opts = {
  ip: 'ip_example', # String | IP address of the client making verification request. If the IP address is from another country, PIN is required even if the cookies match.
  browser: 'browser_example', # String | User Agent of the browser. For example \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36\".
  cookie: 'cookie_example' # String | Unique cookie assigned to this session. If a user tries logging in with the same cookie present, user is automatically logged in and no PIN code verification is needed.
}

begin
  # verified the PIN code entered by the user.
  result = api_instance.verify_pin(username, password, verification_id, pin, opts)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling NumberVerificationApi->verify_pin: #{e}"
end
```

#### Using the verify_pin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> verify_pin_with_http_info(username, password, verification_id, pin, opts)

```ruby
begin
  # verified the PIN code entered by the user.
  data, status_code, headers = api_instance.verify_pin_with_http_info(username, password, verification_id, pin, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue MessenteApi::ApiError => e
  puts "Error when calling NumberVerificationApi->verify_pin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The API username |  |
| **password** | **String** | The API password |  |
| **verification_id** | **String** | Verification ID returned by the successful verification request. |  |
| **pin** | **String** | PIN code entered by the user. |  |
| **ip** | **String** | IP address of the client making verification request. If the IP address is from another country, PIN is required even if the cookies match. | [optional] |
| **browser** | **String** | User Agent of the browser. For example \&quot;Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36\&quot;. | [optional] |
| **cookie** | **String** | Unique cookie assigned to this session. If a user tries logging in with the same cookie present, user is automatically logged in and no PIN code verification is needed. | [optional] |

### Return type

**String**

### Authorization

[apiPassword](../README.md#apiPassword), [apiUsername](../README.md#apiUsername)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain

