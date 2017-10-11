ActiveSupport.on_load(:i18n) do
  I18n.load_path << "#{File.dirname(__FILE__)}/time_wrapper/locale/en.yml"
  I18n.load_path << "#{File.dirname(__FILE__)}/time_wrapper/locale/da.yml"
end