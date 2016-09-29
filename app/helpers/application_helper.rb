module ApplicationHelper
  def screen_body(model, screened_message)
    simple_format(model.screened? ? screened_message : model.body)
  end
end
