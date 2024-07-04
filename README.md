# Messente API Library

- Messente API version: 2.0.0
- Ruby gem version: 2.0.0

[Messente](https://messente.com) is a global provider of messaging and user verification services.  * Send and receive SMS, Viber, WhatsApp and Telegram messages. * Manage contacts and groups. * Fetch detailed info about phone numbers. * Blacklist phone numbers to make sure you&#39;re not sending any unwanted messages.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world.

## Installation

Install Messente API library with `gem install messente_api`.

## Features

Messente API has the following features:

- Omnichannel ([external docs](https://messente.com/documentation/omnichannel-api)),
- Phonebook ([external docs](https://messente.com/documentation/phonebook-api)).

Messente API Library provides the operations described below to access the features.

### BlacklistApi

1. Adds a phone number to the blacklist [`add_to_blacklist`](docs/BlacklistApi.md#add_to_blacklist)
1. Deletes a phone number from the blacklist [`delete_from_blacklist`](docs/BlacklistApi.md#delete_from_blacklist)
1. Returns all blacklisted phone numbers [`fetch_blacklist`](docs/BlacklistApi.md#fetch_blacklist)
1. Checks if a phone number is blacklisted [`is_blacklisted`](docs/BlacklistApi.md#is_blacklisted)

### BulkMessagingApi

1. Sends a bulk Omnimessage [`send_bulk_omnimessage`](docs/BulkMessagingApi.md#send_bulk_omnimessage)

### ContactsApi

1. Adds a contact to a group [`add_contact_to_group`](docs/ContactsApi.md#add_contact_to_group)
1. Creates a new contact [`create_contact`](docs/ContactsApi.md#create_contact)
1. Deletes a contact [`delete_contact`](docs/ContactsApi.md#delete_contact)
1. Lists a contact [`fetch_contact`](docs/ContactsApi.md#fetch_contact)
1. Lists groups of a contact [`fetch_contact_groups`](docs/ContactsApi.md#fetch_contact_groups)
1. Returns all contacts [`fetch_contacts`](docs/ContactsApi.md#fetch_contacts)
1. Removes a contact from a group [`remove_contact_from_group`](docs/ContactsApi.md#remove_contact_from_group)
1. Updates a contact [`update_contact`](docs/ContactsApi.md#update_contact)

### DeliveryReportApi

1. Retrieves the delivery report for the Omnimessage [`retrieve_delivery_report`](docs/DeliveryReportApi.md#retrieve_delivery_report)

### GroupsApi

1. Creates a new group with the provided name [`create_group`](docs/GroupsApi.md#create_group)
1. Deletes a group [`delete_group`](docs/GroupsApi.md#delete_group)
1. Lists a group [`fetch_group`](docs/GroupsApi.md#fetch_group)
1. Returns all groups [`fetch_groups`](docs/GroupsApi.md#fetch_groups)
1. Updates a group with the provided name [`update_group`](docs/GroupsApi.md#update_group)

### NumberLookupApi

1. Requests info about phone numbers [`fetch_info`](docs/NumberLookupApi.md#fetch_info)

### OmnimessageApi

1. Cancels a scheduled Omnimessage [`cancel_scheduled_message`](docs/OmnimessageApi.md#cancel_scheduled_message)
1. Sends an Omnimessage [`send_omnimessage`](docs/OmnimessageApi.md#send_omnimessage)

### StatisticsApi

1. Requests statistics reports for each country [`create_statistics_report`](docs/StatisticsApi.md#create_statistics_report)

## Auth

**Type**: HTTP basic authentication

Read the [external getting-started article](https://messente.com/documentation/getting-started) which explains API keys and Sender ID logic.

## Getting started: sending an omnimessage

```ruby
require 'messente_api'

# setup authorization
MessenteApi.configure do |config|
    # Configure HTTP basic authorization: basicAuth
    config.username = '<MESSENTE_API_USERNAME>'
    config.password = '<MESSENTE_API_PASSWORD>'
end

api_instance = MessenteApi::OmnimessageApi.new
omnimessage = MessenteApi::Omnimessage.new
omnimessage.to = '<recipient_phone_number>'

sms = MessenteApi::SMS.new(
    sender: "<sender name (optional)>",
    text: "Hello SMS!"
)

viber = MessenteApi::Viber.new(
    sender: "<sender name (optional)>",
    text: "Hello from Viber!"
)

wa_parameters = [
  MessenteApi::WhatsAppParameter.new(type: 'text', text: 'hello whatsapp'),
]
wa_component = MessenteApi::WhatsAppComponent.new(type: 'body', parameters: wa_parameters)
wa_lang = MessenteApi::WhatsAppLanguage.new(code: '<language_code>')
wa_template = MessenteApi::WhatsAppTemplate.new(name: '<template_name>', language: wa_lang, components: [wa_component])
whatsapp = MessenteApi::WhatsApp.new(
    sender: '<sender name (optional)>',
    template: wa_template,
)

omnimessage.messages = [sms, viber, whatsapp]

begin
  result = api_instance.send_omnimessage(omnimessage)
  puts result
rescue MessenteApi::ApiError => e
  puts "Exception when calling send_omnimessage: #{e}"
  puts e.response_body
end

```

## License

[Apache-2.0](http://www.apache.org/licenses/LICENSE-2.0.html)

## Terms

[https://messente.com/terms-and-conditions](https://messente.com/terms-and-conditions)
