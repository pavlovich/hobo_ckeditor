class string
  def to_object_name_and_method_name
    object_name, method_name = self.split(separator)[-1].split().unshift(self.split(separator)[0..-2].join(separator))
    method_name.chomp(']') if method_name && !method_name.empty?
    method_name, object_name = [object_name, 'this'] if !method_name
    [object_name.to_sym, method_name.to_s]
  end
end