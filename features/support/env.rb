#first file which gets executed
# this is the place where execution starts
require 'watir-webdriver'
require 'cucumber'
require 'page-object'
require 'rspec'

World(PageObject::PageFactory)