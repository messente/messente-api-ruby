# MessenteApi::ContactFields

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**phone_number** | **String** | Phone number in e.164 format | 
**email** | **String** | The email of the contact | [optional] 
**first_name** | **String** | The first name of the contact | [optional] 
**last_name** | **String** | The last name of the contact | [optional] 
**company** | **String** | The company of the contact | [optional] 
**title** | **String** | The title of the contact | [optional] 
**custom** | **String** | The first custom field | [optional] 
**custom2** | **String** | The second custom field | [optional] 
**custom3** | **String** | The third custom field | [optional] 
**custom4** | **String** | The fourth custom field | [optional] 
**scheduled_deletion_date** | **Date** | The date on which the contact is going to be deleted  because it has not belonged to a group for 30 days | [optional] 

## Code Sample

```ruby
require 'MessenteApi'

instance = MessenteApi::ContactFields.new(phone_number: null,
                                 email: null,
                                 first_name: null,
                                 last_name: null,
                                 company: null,
                                 title: null,
                                 custom: null,
                                 custom2: null,
                                 custom3: null,
                                 custom4: null,
                                 scheduled_deletion_date: null)
```


