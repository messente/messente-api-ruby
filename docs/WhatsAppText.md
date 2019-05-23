# MessenteApi::WhatsAppText

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**preview_url** | **Boolean** | Whether to display link preview if the message contains a hyperlink. | [optional] [default to true]
**body** | **String** | Plaintext content for WhatsApp, can contain URLs, emojis and formatting | 

## Code Sample

```ruby
require 'MessenteApi'

instance = MessenteApi::WhatsAppText.new(preview_url: null,
                                 body: null)
```


