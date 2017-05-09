module ApplicationHelper

  def flag(locale)
    "flags/#{locale}.png"
  end

  def custom_icon(icon, klass = "text-default")
    "<svg class=\"icon-svg #{klass} #{icon}\"><use xlink:href=\"##{icon}\"/></svg>".html_safe
  end

end
