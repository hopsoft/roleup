[![Lines of Code](http://img.shields.io/badge/lines_of_code-60-brightgreen.svg?style=flat)](http://blog.codinghorror.com/the-best-code-is-no-code-at-all/)
[![Code Status](http://img.shields.io/codeclimate/github/hopsoft/roleup.svg?style=flat)](https://codeclimate.com/github/hopsoft/roleup)
[![Dependency Status](http://img.shields.io/gemnasium/hopsoft/roleup.svg?style=flat)](https://gemnasium.com/hopsoft/roleup)
[![Build Status](http://img.shields.io/travis/hopsoft/roleup.svg?style=flat)](https://travis-ci.org/hopsoft/roleup)
[![Coverage Status](https://img.shields.io/coveralls/hopsoft/roleup.svg?style=flat)](https://coveralls.io/r/hopsoft/roleup?branch=master)
[![Downloads](http://img.shields.io/gem/dt/roleup.svg?style=flat)](http://rubygems.org/gems/roleup)

# Roleup

Incredibly simple role management.
Leaves authorization up to you.

_Checkout [Perm](https://github.com/hopsoft/perm) for a simple authorization solution._

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
user.has_all_roles? :reader, :writer # => true
user.has_all_roles? :reader, :writer, :editor # => false
user.has_one_role? :writer, :editor, :admin # => true

user.roles << :admin
user.has_role? :admin # => true

user.roles.delete :admin
user.has_role? :admin # => false
```
