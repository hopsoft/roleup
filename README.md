# Roleup

[![Code Climate](https://codeclimate.com/github/hopsoft/roleup/badges/gpa.svg)](https://codeclimate.com/github/hopsoft/roleup)

Incredibly simple role management.
Leaves authorization concerns up to you.

## Quickstart

```
gem install roleup
```

```
class Foo
  include Roleup::HasRoles
end

foo = Foo.new
foo.set_roles = :reader, :writer
foo.has_role? :reader # => true
foo.has_role? :writer # => true
foo.has_role? :admin # => false
```
