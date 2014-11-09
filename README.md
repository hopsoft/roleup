# Roleup

[![Code Climate](https://codeclimate.com/github/hopsoft/roleup/badges/gpa.svg)](https://codeclimate.com/github/hopsoft/roleup)
[![Travis CI](https://travis-ci.org/hopsoft/roleup.svg)](https://travis-ci.org/hopsoft/roleup)
[![Coverage Status](https://img.shields.io/coveralls/hopsoft/roleup.svg)](https://coveralls.io/r/hopsoft/roleup?branch=master)

Incredibly simple role management.
Leaves authorization up to you.

## Quickstart

```sh
gem install roleup
```

```ruby
class Foo
  include Roleup::HasRoles
end

foo = Foo.new
foo.roles = [:reader, :writer]

foo.has_role? :reader # => true
foo.has_all? :reader, :writer # => true
foo.has_all? :reader, :writer, :editor # => false
foo.has_one? :writer, :editor, :admin # => true

foo.roles << :admin
foo.has_role? :admin # => true

foo.roles.delete :admin
foo.has_role? :admin # => false
```
