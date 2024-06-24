# MessenteApi::WhatsAppTemplate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the template | 
**language** | [**WhatsAppLanguage**](WhatsAppLanguage.md) |  | 
**components** | [**Array&lt;WhatsAppComponent&gt;**](WhatsAppComponent.md) | List of template components | [optional] 

## Code Sample

```ruby
require 'MessenteApi'

instance = MessenteApi::WhatsAppTemplate.new(name: null,
                                 language: null,
                                 components: null)
```


