# MessenteApi::ContactsApi

All URIs are relative to *https://api.messente.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_contact_to_group**](ContactsApi.md#add_contact_to_group) | **POST** /phonebook/groups/{groupId}/contacts/{phone} | Adds a contact to a group
[**create_contact**](ContactsApi.md#create_contact) | **POST** /phonebook/contacts | Creates a new contact
[**delete_contact**](ContactsApi.md#delete_contact) | **DELETE** /phonebook/contacts/{phone} | Deletes a contact
[**fetch_contact**](ContactsApi.md#fetch_contact) | **GET** /phonebook/contacts/{phone} | Lists a contact
[**fetch_contact_groups**](ContactsApi.md#fetch_contact_groups) | **GET** /phonebook/contacts/{phone}/groups | Lists groups of a contact
[**fetch_contacts**](ContactsApi.md#fetch_contacts) | **GET** /phonebook/contacts | Returns all contacts
[**remove_contact_from_group**](ContactsApi.md#remove_contact_from_group) | **DELETE** /phonebook/groups/{groupId}/contacts/{phone} | Removes a contact from a group
[**update_contact**](ContactsApi.md#update_contact) | **PATCH** /phonebook/contacts/{phone} | Updates a contact



## add_contact_to_group

> Object add_contact_to_group(group_id, phone)

Adds a contact to a group

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

api_instance = MessenteApi::ContactsApi.new
group_id = '5792a02a-e5c2-422b-a0a0-0ae65d814663' # String | String in UUID format
phone = '+37251000000' # String | A phone number

begin
  #Adds a contact to a group
  result = api_instance.add_contact_to_group(group_id, phone)
  p result
rescue MessenteApi::ApiError => e
  puts "Exception when calling ContactsApi->add_contact_to_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| String in UUID format | 
 **phone** | **String**| A phone number | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_contact

> ContactEnvelope create_contact(contact_fields)

Creates a new contact

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

api_instance = MessenteApi::ContactsApi.new
contact_fields = {"phoneNumber":"+37251000000","email":"anyone@messente.com","firstName":"Any","lastName":"One","company":"Messente","title":"Sir","custom":"Any custom","custom2":"Any custom two","custom3":"Any custom three","custom4":"Any custom four","scheduledDeletionDate":"2020-08-31"} # ContactFields | 

begin
  #Creates a new contact
  result = api_instance.create_contact(contact_fields)
  p result
rescue MessenteApi::ApiError => e
  puts "Exception when calling ContactsApi->create_contact: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_fields** | [**ContactFields**](ContactFields.md)|  | 

### Return type

[**ContactEnvelope**](ContactEnvelope.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_contact

> delete_contact(phone)

Deletes a contact

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

api_instance = MessenteApi::ContactsApi.new
phone = '+37251000000' # String | A phone number

begin
  #Deletes a contact
  api_instance.delete_contact(phone)
rescue MessenteApi::ApiError => e
  puts "Exception when calling ContactsApi->delete_contact: #{e}"
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


## fetch_contact

> ContactEnvelope fetch_contact(phone)

Lists a contact

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

api_instance = MessenteApi::ContactsApi.new
phone = '+37251000000' # String | A phone number

begin
  #Lists a contact
  result = api_instance.fetch_contact(phone)
  p result
rescue MessenteApi::ApiError => e
  puts "Exception when calling ContactsApi->fetch_contact: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone** | **String**| A phone number | 

### Return type

[**ContactEnvelope**](ContactEnvelope.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## fetch_contact_groups

> GroupListEnvelope fetch_contact_groups(phone)

Lists groups of a contact

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

api_instance = MessenteApi::ContactsApi.new
phone = '+37251000000' # String | A phone number

begin
  #Lists groups of a contact
  result = api_instance.fetch_contact_groups(phone)
  p result
rescue MessenteApi::ApiError => e
  puts "Exception when calling ContactsApi->fetch_contact_groups: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone** | **String**| A phone number | 

### Return type

[**GroupListEnvelope**](GroupListEnvelope.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## fetch_contacts

> ContactListEnvelope fetch_contacts(opts)

Returns all contacts

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

api_instance = MessenteApi::ContactsApi.new
opts = {
  group_ids: ['[\"5792a02a-e5c2-422b-a0a0-0ae65d814663\",\"4792a02a-e5c2-422b-a0a0-0ae65d814662\"]'] # Array<String> | Optional one or many group id strings in UUID format. For example: \"/contacts?groupIds=group_id_one&groupIds=group_id_two\" 
}

begin
  #Returns all contacts
  result = api_instance.fetch_contacts(opts)
  p result
rescue MessenteApi::ApiError => e
  puts "Exception when calling ContactsApi->fetch_contacts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_ids** | [**Array&lt;String&gt;**](String.md)| Optional one or many group id strings in UUID format. For example: \&quot;/contacts?groupIds&#x3D;group_id_one&amp;groupIds&#x3D;group_id_two\&quot;  | [optional] 

### Return type

[**ContactListEnvelope**](ContactListEnvelope.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_contact_from_group

> remove_contact_from_group(group_id, phone)

Removes a contact from a group

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

api_instance = MessenteApi::ContactsApi.new
group_id = '5792a02a-e5c2-422b-a0a0-0ae65d814663' # String | String in UUID format
phone = '+37251000000' # String | A phone number

begin
  #Removes a contact from a group
  api_instance.remove_contact_from_group(group_id, phone)
rescue MessenteApi::ApiError => e
  puts "Exception when calling ContactsApi->remove_contact_from_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| String in UUID format | 
 **phone** | **String**| A phone number | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_contact

> ContactEnvelope update_contact(phone, contact_update_fields)

Updates a contact

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

api_instance = MessenteApi::ContactsApi.new
phone = '+37251000000' # String | A phone number
contact_update_fields = {"email":"anyone@messente.com","firstName":"Any","lastName":"One","company":"Messente","title":"Sir","custom":"Any custom","custom2":"Any custom two","custom3":"Any custom three","custom4":"Any custom four","scheduledDeletionDate":"2020-08-31"} # ContactUpdateFields | 

begin
  #Updates a contact
  result = api_instance.update_contact(phone, contact_update_fields)
  p result
rescue MessenteApi::ApiError => e
  puts "Exception when calling ContactsApi->update_contact: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone** | **String**| A phone number | 
 **contact_update_fields** | [**ContactUpdateFields**](ContactUpdateFields.md)|  | 

### Return type

[**ContactEnvelope**](ContactEnvelope.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

