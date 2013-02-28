require 'ckeditor'
require 'hobo_fields'
require 'hobo_rapid'
require 'hobo_ckeditor'
require 'hobo_ckeditor/types/ck_editor_text'

module HoboCkeditor

  VERSION = File.read(File.expand_path('../../VERSION', __FILE__)).strip

  @@root = Pathname.new File.expand_path('../..', __FILE__)
  def self.root; @@root; end

  EDIT_LINK_BASE = 'https://github.com/my_github_username/hobo_ckeditor/edit/master'

  if defined?(Rails)
    require 'hobo_ckeditor/railtie'

    class Engine < ::Rails::Engine
    end
  end
end
