module ApplicationHelper
  def error_messages(err)
    list = content_tag(:ul)
    if err.errors.any?
      # err.errors.full_messages.each do |msg|
      #   curr = content_tag(:li, msg)
      #   list << curr
      # end
      
    end
    list
  end

  def check_login
    if logged_in?
      list1 = content_tag(:li, class: "nav-item active")
      link_to current_user.username, user_path(current_user.id), class:"btn btn-success mx-1"%>
      </li>
      <li class="nav-item active">
        <%= link_to "New event", new_event_path, class:"btn btn-primary mx-1"%>
      </li>
      <li class="nav-item active">
        <%= link_to "Sign out", destroy_path(session), method: :delete, data: { confirm: "Are you sure?" }, class:"btn btn-warning mx-1" %>
      </li>
    end
  end
end
