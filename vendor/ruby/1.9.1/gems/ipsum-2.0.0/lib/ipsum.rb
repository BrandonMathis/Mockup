require 'ipsum/version'
require 'ipsum/languages'

Ipsum::LANGUAGES.each do |language|
  require "ipsum-#{language}"
end
