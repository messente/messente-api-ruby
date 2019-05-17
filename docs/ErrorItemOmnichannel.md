# MessenteApi::ErrorItemOmnichannel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | [**ErrorTitleOmnichannel**](ErrorTitleOmnichannel.md) |  | 
**detail** | **String** | Free form more detailed description of the error. | 
**code** | [**ErrorCodeOmnichannel**](ErrorCodeOmnichannel.md) |  | 
**source** | **String** | Describes which field is causing the issue in the payload, null for non 400 status code responses | 

## Code Sample

```ruby
require 'MessenteApi'

instance = MessenteApi::ErrorItemOmnichannel.new(title: null,
                                 detail: null,
                                 code: null,
                                 source: null)
```


