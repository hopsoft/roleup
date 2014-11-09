# Roleup

Incredibly simple role management.
Leaves authorization up to you.

[![Code Climate](https://codeclimate.com/github/hopsoft/roleup/badges/gpa.svg)](https://codeclimate.com/github/hopsoft/roleup)
[![Travis CI](https://travis-ci.org/hopsoft/roleup.svg)](https://travis-ci.org/hopsoft/roleup)
[![Coverage Status](https://img.shields.io/coveralls/hopsoft/roleup.svg)](https://coveralls.io/r/hopsoft/roleup?branch=master)

## Quickstart

```sh
gem install roleup
```

```ruby
class User
  include Roleup::HasRoles
end

user = User.new
user.roles = [:reader, :writer]

user.has_role? :reader # => true
user.has_all? :reader, :writer # => true
user.has_all? :reader, :writer, :editor # => false
user.has_one? :writer, :editor, :admin # => true

user.roles << :admin
user.has_role? :admin # => true

user.roles.delete :admin
user.has_role? :admin # => false
```
