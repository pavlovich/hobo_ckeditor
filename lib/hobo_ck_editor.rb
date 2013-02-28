require 'ckeditor'
require 'hobo_fields'
require 'hobo_rapid'
require 'hobo_ckeditor'
require 'hobo_ckeditor/types/ckeditor_text'

module HoboCkeditor

  VERSION = File.read(File.expand_path('../../VERSION', __FILE__)).strip

  DEFAULT_EDITOR_SETTINGS = {
      :plugins => 'dialogui,dialog,about,a11yhelp,basicstyles,blockquote,clipboard,colordialog,colorbutton,panel,floatpanel,menu,contextmenu,resize,button,toolbar,elementspath,list,indent,enterkey,entities,popup,filebrowser,floatingspace,listblock,richcombo,format,htmlwriter,horizontalrule,wysiwygarea,image,fakeobjects,link,magicline,maximize,pastetext,pastefromword,removeformat,sourcearea,specialchar,menubutton,scayt,stylescombo,tab,table,tabletools,undo,wsc',
      :skin => 'moono',
      :preset => 'standard',
      :toolbarGroups => [
          { name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
          { name: 'editing',     groups: [ 'find', 'selection', 'spellchecker' ] },
          { name: 'links' },
          { name: 'insert' },
          { name: 'forms' },
          { name: 'tools' },
          { name: 'document',	   groups: [ 'mode', 'document', 'doctools' ] },
          { name: 'others' },
          '/',
          { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
          { name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align' ] },
          { name: 'styles' },
          { name: 'colors' }
      ],
      :removeButtons => 'Subscript,Superscript'
  }

  @@root = Pathname.new File.expand_path('../..', __FILE__)
  def self.root; @@root; end

  EDIT_LINK_BASE = 'https://github.com/my_github_username/hobo_ckeditor/edit/master'

  if defined?(Rails)
    require 'hobo_ckeditor/railtie'

    class Engine < ::Rails::Engine
    end
  end

  def self.default_editor_settings()
    HoboCkeditor::DEFAULT_EDITOR_SETTINGS
  end

end
