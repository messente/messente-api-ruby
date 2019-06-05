# MessenteApi::Omnimessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | **String** | Phone number in e.164 format | 
**messages** | [**Array&lt;OneOfViberSMSWhatsApp&gt;**](OneOfViberSMSWhatsApp.md) | An array of messages | 
**dlr_url** | **String** | URL where the delivery report will be sent | [optional] 
**text_store** | [**TextStore**](TextStore.md) |  | [optional] 
**time_to_send** | **DateTime** | Optional parameter for sending messages at some specific time in the future.   Time must be specified in the ISO-8601 format.   If no timezone is specified, then the timezone is assumed to be UTC.    Examples:    * Time specified with timezone: 2018-06-22T09:05:07+00:00 Time specified in UTC: 2018-06-22T09:05:07Z   * Time specified without timezone: 2018-06-22T09:05 (equivalent to 2018-06-22T09:05+00:00) | [optional] 

## Code Sample

```ruby
require 'MessenteApi'

instance = MessenteApi::Omnimessage.new(to: null,
                                 messages: null,
                                 dlr_url: null,
                                 text_store: null,
                                 time_to_send: null)
```


