module HoboFields
  module Types
    class CkeditorText < HtmlString
      HoboFields.register_type(:cktext, self)
    end
  end
end