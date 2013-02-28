class String
  def to_object_name_and_method_name
    object_name, method_name = self.split('[')[-1].split().unshift(self.split('[')[0..-2].join('['))
    method_name.chomp!(']') if method_name && !method_name.empty?
    method_name, object_name = [object_name, 'this'] if !method_name
    [object_name.to_sym, method_name.to_s]
  end
end