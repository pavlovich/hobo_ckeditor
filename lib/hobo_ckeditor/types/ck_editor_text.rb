module HoboFields
  module Types
    class CKEditorText < HtmlString

      #def initialize(model, name, type, options={})
      #  super(model, name, type, options={})
      #  #raise ArgumentError, "you cannot provide a field spec for the primary key" if name == model.primary_key
      #  #self.model = model
      #  #self.name = name.to_sym
      #  #self.type = type.is_a?(String) ? type.to_sym : type
      #  #position = options.delete(:position)
      #  #self.options = options
      #  #self.position = position || model.field_specs.length
      #end

      HoboFields.register_type(:cktext, self)

    end
  end
end
