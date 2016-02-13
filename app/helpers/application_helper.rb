module ApplicationHelper
  def notice_message
    alert_types = { notice: :success, alert: :danger }
    close_button_options = { class: "close", "data-dismiss": "alert", "aria-hidden": true }
    close_button = content_tag(:button, "×", close_button_options)
    # TODO Q: where does flash come from?
    # TODO Clue: flash   => #<ActionDispatch::Flash::FlashHash:0x007fc6693025f0 @discard=#<Set: {"notice"}>, @flashes={"notice"=>"Signed in successfully."}, @now=nil>
    # TODO Clue: type    => "notice"
    # TODO Clue: message => "Signed in successfully."
    alerts = flash.map do |type, message|
      alert_content = close_button + message
      alert_type = alert_types[type.to_sym] || type
      alert_class = "alert alert-#{alert_type} alert-dismissable"
      content_tag(:div, alert_content, class: alert_class)
    end
    alerts.join("\n").html_safe
  end

  def render_cart_items_count(cart)
    cart.cart_items.count
  end
end
