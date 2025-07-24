# MessenteApi::WhatsAppTemplatesApi

All URIs are relative to *https://api.messente.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_whatsapp_template**](WhatsAppTemplatesApi.md#create_whatsapp_template) | **POST** /whatsapp/wabas/{wabaId}/templates | Creates a WhatsApp template |
| [**delete_whatsapp_template**](WhatsAppTemplatesApi.md#delete_whatsapp_template) | **DELETE** /whatsapp/wabas/{wabaId}/templates | Deletes a WhatsApp template |
| [**get_whatsapp_template_by_id**](WhatsAppTemplatesApi.md#get_whatsapp_template_by_id) | **GET** /whatsapp/wabas/{wabaId}/templates/{templateId} | Requests a WhatsApp template with the given ID |
| [**list_whatsapp_templates**](WhatsAppTemplatesApi.md#list_whatsapp_templates) | **GET** /whatsapp/wabas/{wabaId}/templates | Requests a list of WhatsApp templates |
| [**update_whatsapp_template**](WhatsAppTemplatesApi.md#update_whatsapp_template) | **PUT** /whatsapp/wabas/{wabaId}/templates/{templateId} | Updates a WhatsApp template |


## create_whatsapp_template

> <WhatsappCreateTemplateResponse> create_whatsapp_template(waba_id, whatsapp_create_template_request)

Creates a WhatsApp template

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

api_instance = MessenteApi::WhatsAppTemplatesApi.new
waba_id = 'waba_id_example' # String | The ID of the WABA
whatsapp_create_template_request = MessenteApi::WhatsappCreateTemplateRequest.new({name: 'name_example', category: MessenteApi::WhatsappTemplateCategory::AUTHENTICATION, language: 'language_example', components: [MessenteApi::WhatsappTemplateComponent.new]}) # WhatsappCreateTemplateRequest | The WhatsApp template to create

begin
  # Creates a WhatsApp template
  result = api_instance.create_whatsapp_template(waba_id, whatsapp_create_template_request)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->create_whatsapp_template: #{e}"
end
```

#### Using the create_whatsapp_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WhatsappCreateTemplateResponse>, Integer, Hash)> create_whatsapp_template_with_http_info(waba_id, whatsapp_create_template_request)

```ruby
begin
  # Creates a WhatsApp template
  data, status_code, headers = api_instance.create_whatsapp_template_with_http_info(waba_id, whatsapp_create_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WhatsappCreateTemplateResponse>
rescue MessenteApi::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->create_whatsapp_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waba_id** | **String** | The ID of the WABA |  |
| **whatsapp_create_template_request** | [**WhatsappCreateTemplateRequest**](WhatsappCreateTemplateRequest.md) | The WhatsApp template to create |  |

### Return type

[**WhatsappCreateTemplateResponse**](WhatsappCreateTemplateResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_whatsapp_template

> Object delete_whatsapp_template(waba_id, name, opts)

Deletes a WhatsApp template

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

api_instance = MessenteApi::WhatsAppTemplatesApi.new
waba_id = 'waba_id_example' # String | The ID of the WABA
name = 'template_name' # String | The name of the template to delete
opts = {
  hsm_id: '1' # String | The ID of the template to delete
}

begin
  # Deletes a WhatsApp template
  result = api_instance.delete_whatsapp_template(waba_id, name, opts)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->delete_whatsapp_template: #{e}"
end
```

#### Using the delete_whatsapp_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_whatsapp_template_with_http_info(waba_id, name, opts)

```ruby
begin
  # Deletes a WhatsApp template
  data, status_code, headers = api_instance.delete_whatsapp_template_with_http_info(waba_id, name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue MessenteApi::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->delete_whatsapp_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waba_id** | **String** | The ID of the WABA |  |
| **name** | **String** | The name of the template to delete |  |
| **hsm_id** | **String** | The ID of the template to delete | [optional] |

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whatsapp_template_by_id

> <WhatsappTemplateResponse> get_whatsapp_template_by_id(waba_id, template_id)

Requests a WhatsApp template with the given ID

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

api_instance = MessenteApi::WhatsAppTemplatesApi.new
waba_id = 'waba_id_example' # String | The ID of the WABA
template_id = 'template_id_example' # String | The ID of the template to retrieve

begin
  # Requests a WhatsApp template with the given ID
  result = api_instance.get_whatsapp_template_by_id(waba_id, template_id)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->get_whatsapp_template_by_id: #{e}"
end
```

#### Using the get_whatsapp_template_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WhatsappTemplateResponse>, Integer, Hash)> get_whatsapp_template_by_id_with_http_info(waba_id, template_id)

```ruby
begin
  # Requests a WhatsApp template with the given ID
  data, status_code, headers = api_instance.get_whatsapp_template_by_id_with_http_info(waba_id, template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WhatsappTemplateResponse>
rescue MessenteApi::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->get_whatsapp_template_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waba_id** | **String** | The ID of the WABA |  |
| **template_id** | **String** | The ID of the template to retrieve |  |

### Return type

[**WhatsappTemplateResponse**](WhatsappTemplateResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_whatsapp_templates

> <WhatsappListTemplatesResponse> list_whatsapp_templates(waba_id, opts)

Requests a list of WhatsApp templates

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

api_instance = MessenteApi::WhatsAppTemplatesApi.new
waba_id = 'waba_id_example' # String | The ID of the WABA
opts = {
  limit: 10, # Integer | The number of templates to return in the list. Although the max size is 500, for large datasets it is recommended to use a lower limit and instead use pagination to avoid potential timeouts. Defaults to 25.
  before: 'MAZDZD', # String | A cursor point used for a paginated request to indicate the template to paginate backwards from.
  after: 'MjQZD', # String | A cursor point used for a paginated request to indicate the template to paginate forwards from.
  category: MessenteApi::WhatsappTemplateCategory::AUTHENTICATION, # WhatsappTemplateCategory | A filter for returning only templates matching a specific category.
  content: 'special offer', # String | A search filter representing the content of a template. Only matching templates will be returned in the list.
  language: 'en', # String | A filter  for returning only templates matching a specific language code. A list of supported languages is available in the [WhatsApp documentation](https://developers.facebook.com/docs/whatsapp/api/messages/message-templates/) 
  name: 'Sample Template', # String | A search filter representing the name, either full or partial, of a template. Only matching templates will be returned in the list.
  status: MessenteApi::WhatsappTemplateStatus::APPROVED # WhatsappTemplateStatus | A filter for returning only templates matching a specific status.
}

begin
  # Requests a list of WhatsApp templates
  result = api_instance.list_whatsapp_templates(waba_id, opts)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->list_whatsapp_templates: #{e}"
end
```

#### Using the list_whatsapp_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WhatsappListTemplatesResponse>, Integer, Hash)> list_whatsapp_templates_with_http_info(waba_id, opts)

```ruby
begin
  # Requests a list of WhatsApp templates
  data, status_code, headers = api_instance.list_whatsapp_templates_with_http_info(waba_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WhatsappListTemplatesResponse>
rescue MessenteApi::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->list_whatsapp_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waba_id** | **String** | The ID of the WABA |  |
| **limit** | **Integer** | The number of templates to return in the list. Although the max size is 500, for large datasets it is recommended to use a lower limit and instead use pagination to avoid potential timeouts. Defaults to 25. | [optional][default to 25] |
| **before** | **String** | A cursor point used for a paginated request to indicate the template to paginate backwards from. | [optional] |
| **after** | **String** | A cursor point used for a paginated request to indicate the template to paginate forwards from. | [optional] |
| **category** | [**WhatsappTemplateCategory**](.md) | A filter for returning only templates matching a specific category. | [optional] |
| **content** | **String** | A search filter representing the content of a template. Only matching templates will be returned in the list. | [optional] |
| **language** | **String** | A filter  for returning only templates matching a specific language code. A list of supported languages is available in the [WhatsApp documentation](https://developers.facebook.com/docs/whatsapp/api/messages/message-templates/)  | [optional] |
| **name** | **String** | A search filter representing the name, either full or partial, of a template. Only matching templates will be returned in the list. | [optional] |
| **status** | [**WhatsappTemplateStatus**](.md) | A filter for returning only templates matching a specific status. | [optional] |

### Return type

[**WhatsappListTemplatesResponse**](WhatsappListTemplatesResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_whatsapp_template

> Object update_whatsapp_template(waba_id, template_id, whatsapp_update_template_request)

Updates a WhatsApp template

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

api_instance = MessenteApi::WhatsAppTemplatesApi.new
waba_id = 'waba_id_example' # String | The ID of the WABA
template_id = 'template_id_example' # String | The ID of the template to update
whatsapp_update_template_request = MessenteApi::WhatsappUpdateTemplateRequest.new # WhatsappUpdateTemplateRequest | The template data to be updated

begin
  # Updates a WhatsApp template
  result = api_instance.update_whatsapp_template(waba_id, template_id, whatsapp_update_template_request)
  p result
rescue MessenteApi::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->update_whatsapp_template: #{e}"
end
```

#### Using the update_whatsapp_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_whatsapp_template_with_http_info(waba_id, template_id, whatsapp_update_template_request)

```ruby
begin
  # Updates a WhatsApp template
  data, status_code, headers = api_instance.update_whatsapp_template_with_http_info(waba_id, template_id, whatsapp_update_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue MessenteApi::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->update_whatsapp_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waba_id** | **String** | The ID of the WABA |  |
| **template_id** | **String** | The ID of the template to update |  |
| **whatsapp_update_template_request** | [**WhatsappUpdateTemplateRequest**](WhatsappUpdateTemplateRequest.md) | The template data to be updated |  |

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

