module ApplicationHelper
  def humanize_boolean(value)
    case value
    when true
      "Let's walk!"
    when false
      "I'm good!"
    when nil
      "Undefined"
    else
      "Invalid"
    end
  end
  def humanize_boolean_p(value)
    case value
    when true
      "Let's walk!"
    when false
      "Can't walk now"
    when nil
      "Undefined"
    else
      "Invalid"
    end
  end
end
