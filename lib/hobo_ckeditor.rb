require 'ckeditor'
require 'hobo_fields'
require 'hobo_rapid'
require 'hobo_ckeditor'
require 'hobo_ckeditor/types/ck_editor_text'

module HoboCkeditor
  VERSION = File.read(File.expand_path('../../VERSION', __FILE__)).strip
  @@root = Pathname.new File.expand_path('../..', __FILE__)
  def self.root; @@root; end
end

require 'hobo_ckeditor/railtie' if defined?(Rails)

class Engine < ::Rails::Engine
end