require 'aws-record'

class User
  include Aws::Record

  integer_attr :token, hash_key: true
  string_attr  :name, range_key: true
  boolean_attr :active
end
