module ApplicationHelper
  def error_messages(model, type)
    content_tag(:ul, class: "style-none") do
      model.errors[type].collect {|item| concat(content_tag(:li, item, class: "text-danger error-text text-capitalize"))}
   end
  end

  def check_login
    content_tag(:ul, class: "navbar-nav") do
     if logged_in? 
      content_tag(:li, link_to(current_user.username, user_path(current_user.id), class:"btn btn-success mx-1"), class: "nav-item active") +
      content_tag(:li, link_to("New event", new_event_path, class:"btn btn-primary mx-1"), class: "nav-item active") +
      content_tag(:li, link_to("Sign out", destroy_path(session), method: :delete, data: { confirm: "Are you sure?" }, class:"btn btn-warning mx-1"), class: "nav-item active")
     else
      content_tag(:li, link_to("Login", login_path, class: "btn btn-primary mt-1 mx-1"), class: "nav-item active") +
      content_tag(:li, link_to("Sign Up", new_user_path, class: "btn btn-primary mt-1 mx-1"), class: "nav-item active") 
     end 
  end
end
end
