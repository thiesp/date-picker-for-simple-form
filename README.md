# DateWrapper

Date wrapper is a simple form integration of `gem bootstrap-datepicker-rails`. With a simple form wrapper `:date`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'date_wrapper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install date_wrapper

### Setup dependencies
* bootstrap
* font-awesome-rails
* simple_form
    
### In application.scss

```scss
@import 'date_wrapper';
```

This will `@import 'bootstrap-datepicker3';` for you.

### In application.js

```
//= require date_wrapper
```

This will `//= require bootstrap-datepicker` for you.

## Usage

Given a date field named `date` use the following in simple form:

```erbruby
<%= f.input :date, as: :string, wrapper: :date, input_html: {value: I18n.l(f.object.date)} %>
```

## Generate stylesheets

If you want to customize the stylesheets.

    $ rails g date_wrapper:stylesheets


## Generate javascripts

If you want to customize the javascripts.

    $ rails g date_wrapper:javascripts
