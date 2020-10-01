module EventsHelper
     def go_to_btn(event)
        if logged_in?
            link_to 'Go to event', event_path(event), class: "btn btn-primary"
        end
     end

     def show_link
     end
       
end
