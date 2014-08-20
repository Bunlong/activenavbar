# Activenavbar

active navbar is used to set the active navbar link, a navbar link becomes active when you click on it.


## Installation

The simplest way to install is to use Bundler.

Add this line to your application's Gemfile:

```ruby
gem 'activenavbar'
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

Assume we have home, post and category page, and have navbar for each page below:

    %ul
      %li
        = link_to "Home", homes_path
      %li
        = link_to "Food", posts_path
      %li
        = link_to "Beverage", categories_path

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
      = navbar_link "Home", homes_path, "active"
      = navbar_link "Food", posts_path, "active"
      = navbar_link "Beverage", categories_path, "active"

Well, Home link becomes active when we click on Home link.

HTML output:

    <ul>
      <li class="active"><a href="/homes">Home</a></li>
      <li class=""><a href="/posts">Post</a></li>
      <li class=""><a href="/categories">Category</a></li>
    </ul>

Say hi to me @bunlongvan