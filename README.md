# gstin_validation
This gem validates Indian gstin numbers based on the check digit. The last character in a gstin number is the checksum digit. Checksum digit is generated based on the first 14 characters of the gstin number.

# Installing
gem install gstin_validation

# Gemfile
gem 'gstin_validation', '~> 1.0'

# Usage
require 'gstin_validation'

GstinValidation.validate_gstin_number('27AECPK8399G1Z1') #=> true
GstinValidation.validate_gstin_number('27AECPKT312G1Z0') #=> false
