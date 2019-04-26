# Activenavbar [![Gem Version](https://badge.fury.io/rb/activenavbar.svg)](http://badge.fury.io/rb/activenavbar) [![Gem Total Downloads](https://img.shields.io/gem/dt/activenavbar.svg)](https://rubygems.org/gems/activenavbar)

active navbar is used to set the active navbar link, a navbar link becomes active when you click on it.


## Installation

The simplest way to install is to use Bundler.

Add this line to your application's Gemfile:

```ruby
gem 'activenavbar', '~> 1.0.4'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activenavbar

## Method

    navbar_link(label, path, active_class)

- label: the link label.
- path: the link path or controller path.
- active_class: the style sheet active class.

## Usage

Assume we have home, food and beverage page, and have navbar for each page below:

    %ul
      %li
        = link_to "Home", homes_path
      %li
        = link_to "Food", foods_path
      %li
        = link_to "Beverage", beverages_path

Assume we have style sheet for navbar below:

    ul {
      list-style-type: none;
      overflow: hidden;
    }

    li {
      float: left;
    }

    .nav > li > a {
      border-right: 1px solid #A80000;
      padding: 5px;
      color: #000;
    }

    .nav .active > a,
    .nav .active > a:focus {
      color: red;
    }

Now we want a navbar link becomes active when we click on it:

    %ul
      = navbar_link "Home", root_path, "active"
      = navbar_link '<span class="glyphicon glyphicon-heart"></span> Food', foods_path, "active"
      = navbar_link "Beverage", beverages_path, "active"

Well, Home link becomes active when we click on Home link.

HTML output:

    <ul>
      <li class="active"><a href="/">Home</a></li>
      <li class=""><a href="/foods"><span class="glyphicon glyphicon-heart"></span>Food</a></li>
      <li class=""><a href="/beverages">Beverage</a></li>
    </ul>

## License

[MIT License](https://github.com/Bunlong/activenavbar/blob/master/LICENSE)

Copyright (c) 2014 - Present, [Bunlong VAN](https://github.com/Bunlong) ( Maintainer )
