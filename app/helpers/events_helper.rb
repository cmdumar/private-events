module EventsHelper
  def go_to_btn(event)
    link_to 'Go to event', event_path(event), class: 'btn btn-primary' if logged_in?
  end

  def attend_event(event)
    return if event.creator.username != current_user.username

    return unless event.stats.where('user_id = ?', current_user.id).length.zero?

    link_to(
      'Attend this event',
      event_attend_path(
        event,
        user_id: current_user.id
      ),
      method: :post,
      class: 'btn btn-info'
    )
  end
end
