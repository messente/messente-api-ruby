# MessenteApi::GroupsApi

All URIs are relative to *https://api.messente.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_group**](GroupsApi.md#create_group) | **POST** /phonebook/groups | Creates a new group with the provided name
[**delete_group**](GroupsApi.md#delete_group) | **DELETE** /phonebook/groups/{groupId} | Deletes a group
[**fetch_group**](GroupsApi.md#fetch_group) | **GET** /phonebook/groups/{groupId} | Lists a group
[**fetch_groups**](GroupsApi.md#fetch_groups) | **GET** /phonebook/groups | Returns all groups
[**update_group**](GroupsApi.md#update_group) | **PUT** /phonebook/groups/{groupId} | Updates a group with the provided name



## create_group

> GroupEnvelope create_group(group_name)

Creates a new group with the provided name

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

api_instance = MessenteApi::GroupsApi.new
group_name = {"name":"Any group name"} # GroupName | 

begin
  #Creates a new group with the provided name
  result = api_instance.create_group(group_name)
  p result
rescue MessenteApi::ApiError => e
  puts "Exception when calling GroupsApi->create_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_name** | [**GroupName**](GroupName.md)|  | 

### Return type

[**GroupEnvelope**](GroupEnvelope.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_group

> delete_group(group_id)

Deletes a group

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

api_instance = MessenteApi::GroupsApi.new
group_id = '5792a02a-e5c2-422b-a0a0-0ae65d814663' # String | String in UUID format

begin
  #Deletes a group
  api_instance.delete_group(group_id)
rescue MessenteApi::ApiError => e
  puts "Exception when calling GroupsApi->delete_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| String in UUID format | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## fetch_group

> GroupEnvelope fetch_group(group_id)

Lists a group

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

api_instance = MessenteApi::GroupsApi.new
group_id = '5792a02a-e5c2-422b-a0a0-0ae65d814663' # String | String in UUID format

begin
  #Lists a group
  result = api_instance.fetch_group(group_id)
  p result
rescue MessenteApi::ApiError => e
  puts "Exception when calling GroupsApi->fetch_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| String in UUID format | 

### Return type

[**GroupEnvelope**](GroupEnvelope.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## fetch_groups

> GroupListEnvelope fetch_groups

Returns all groups

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

api_instance = MessenteApi::GroupsApi.new

begin
  #Returns all groups
  result = api_instance.fetch_groups
  p result
rescue MessenteApi::ApiError => e
  puts "Exception when calling GroupsApi->fetch_groups: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GroupListEnvelope**](GroupListEnvelope.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_group

> GroupEnvelope update_group(group_id, group_name)

Updates a group with the provided name

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

api_instance = MessenteApi::GroupsApi.new
group_id = '5792a02a-e5c2-422b-a0a0-0ae65d814663' # String | String in UUID format
group_name = {"name":"Any group name"} # GroupName | 

begin
  #Updates a group with the provided name
  result = api_instance.update_group(group_id, group_name)
  p result
rescue MessenteApi::ApiError => e
  puts "Exception when calling GroupsApi->update_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| String in UUID format | 
 **group_name** | [**GroupName**](GroupName.md)|  | 

### Return type

[**GroupEnvelope**](GroupEnvelope.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

