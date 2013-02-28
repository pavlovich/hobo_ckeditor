module HoboFields
  module Types
    class CKEditorText < HtmlString
      HoboFields.register_type(:cktext, self)
    end
  end
end
