# MessenteApi::Telegram

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | **String** | Phone number or alphanumeric sender name | [optional] 
**validity** | **Integer** | After how many minutes this channel is considered as failed and the next channel is attempted | [optional] 
**text** | **String** | Plaintext content for Telegram | [optional] 
**image_url** | **String** | URL for the embedded image. Mutually exclusive with \&quot;document_url\&quot; and \&quot;audio_url\&quot; | [optional] 
**document_url** | **String** | URL for the embedded image. Mutually exclusive with \&quot;audio_url\&quot; and \&quot;image_url\&quot; | [optional] 
**audio_url** | **String** | URL for the embedded image. Mutually exclusive with \&quot;document_url\&quot; and \&quot;image_url\&quot; | [optional] 
**channel** | **String** | The channel used to deliver the message | [optional] [default to &#39;telegram&#39;]

## Code Sample

```ruby
require 'MessenteApi'

instance = MessenteApi::Telegram.new(sender: null,
                                 validity: 360,
                                 text: null,
                                 image_url: null,
                                 document_url: null,
                                 audio_url: null,
                                 channel: null)
```


