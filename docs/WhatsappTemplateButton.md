# MessenteApi::WhatsappTemplateButton

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**WhatsappButtonType**](WhatsappButtonType.md) |  | [optional] |
| **otp_type** | [**WhatsappOtpButtonType**](WhatsappOtpButtonType.md) |  | [optional] |
| **autofill_text** | **String** | Text to be autofilled in the OTP field | [optional] |
| **supported_apps** | [**Array&lt;WhatsappSupportedApp&gt;**](WhatsappSupportedApp.md) | List of supported apps for the button | [optional] |
| **text** | **String** | Text content of the button | [optional] |
| **phone_number** | **String** | Phone number for the button | [optional] |
| **url** | **String** | URL for the button | [optional] |

## Example

```ruby
require 'messente_api'

instance = MessenteApi::WhatsappTemplateButton.new(
  type: null,
  otp_type: null,
  autofill_text: null,
  supported_apps: null,
  text: null,
  phone_number: null,
  url: null
)
```

