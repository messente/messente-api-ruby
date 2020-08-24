# -*- encoding: utf-8 -*-

=begin
#Messente API

#[Messente](https://messente.com) is a global provider of messaging and user verification services.  * Send and receive SMS, Viber, WhatsApp and Telegram messages. * Manage contacts and groups. * Fetch detailed info about phone numbers. * Blacklist phone numbers to make sure you're not sending any unwanted messages.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world.

The version of the OpenAPI document: 1.3.0
Contact: messente@messente.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

$:.push File.expand_path("../lib", __FILE__)
require "messente_api/version"

Gem::Specification.new do |s|
  s.name        = "messente_api"
  s.version     = MessenteApi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Messente"]
  s.email       = ["messente@messente.com"]
  s.homepage    = "https://github.com/messente/messente-api-ruby"
  s.summary     = "Ruby library for Messente API"
  s.description = "[Messente](https://messente.com) is a global provider of messaging and user verification services.  * Send and receive SMS, Viber, WhatsApp and Telegram messages. * Manage contacts and groups. * Fetch detailed info about phone numbers. * Blacklist phone numbers to make sure you're not sending any unwanted messages.  Messente builds [tools](https://messente.com/documentation) to help organizations connect their services to people anywhere in the world."
  s.license     = 'Apache-2.0'
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
