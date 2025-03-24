# MessenteApi::SMS

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **String** | Text content of the SMS | 
**sender** | **String** | Phone number or alphanumeric sender name | [optional] 
**validity** | **Integer** | After how many minutes this channel is considered as failed and the next channel is attempted.                     Only one of \&quot;ttl\&quot; and \&quot;validity\&quot; can be used. | [optional] 
**ttl** | **Integer** | After how many seconds this channel is considered as failed and the next channel is attempted.                     Only one of \&quot;ttl\&quot; and \&quot;validity\&quot; can be used. | [optional] 
**autoconvert** | **String** | Defines how non-GSM characters will be treated:    - \&quot;on\&quot; Use replacement settings from the account&#39;s [API Auto Replace settings page](https://dashboard.messente.com/api-settings/auto-replace) (default)   - \&quot;full\&quot; All non GSM 03.38 characters will be replaced with suitable alternatives   - \&quot;off\&quot; Message content is not modified in any way | [optional] 
**udh** | **String** | hex-encoded string containing SMS UDH | [optional] 
**channel** | **String** | The channel used to deliver the message | [optional] [default to &#39;sms&#39;]

## Code Sample

```ruby
require 'MessenteApi'

instance = MessenteApi::SMS.new(text: Hello world!,
                                 sender: null,
                                 validity: 360,
                                 ttl: 21600,
                                 autoconvert: null,
                                 udh: null,
                                 channel: null)
```


