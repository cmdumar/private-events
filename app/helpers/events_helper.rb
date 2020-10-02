module EventsHelper
     def go_to_btn(event)
        if logged_in?
            link_to 'Go to event', event_path(event), class: "btn btn-primary"
        end
     end

     def attend_event(event)
        if event.creator.username != current_user.username
            if event.stats.where('user_id = ?', current_user.id).length == 0
            link_to "Attend this event", event_attend_path(event, user_id: current_user.id), method: :post, class: "btn btn-info"
            end
        end
     end
end
