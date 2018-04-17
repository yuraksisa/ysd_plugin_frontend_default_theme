require 'ysd-plugins' unless defined?Plugins::Plugin

Plugins::SinatraAppPlugin.register :frontend_default_theme do

  name=        'frontend_defaul_theme'
  author=      'yurak sisa'
  description= 'tryton'
  version=     '0.1'
  sinatra_extension YsdPluginFrontendDefaultTheme::Sinatra
  hooker YsdPluginFrontendDefaultTheme::FrontendDefaultThemeExtension

end