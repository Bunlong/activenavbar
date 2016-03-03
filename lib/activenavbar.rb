require "activenavbar/version"

module Activenavbar
  def navbar_link(label, path, active_class)
    class_name = current_page?(path) || path == "/#{request.fullpath.split('/')[1]}" ? active_class : ''
    content_tag(:li, :class => class_name) do
      link_to path do
        label.html_safe
      end
    end
  end
end

ActionView::Base.send :include, Activenavbar