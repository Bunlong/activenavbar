require "activenavbar/version"

module Activenavbar
  def navbar_link(label, path, active_class)
    class_name = current_page?(path) ? active_class : ''
    content_tag(:li, :class => class_name) { link_to label, path }
  end
end

ActionView::Base.send :include, Activenavbar