module YsdPluginFrontendDefaultTheme
  module Sinatra

    def self.registered(app)

      # Add the local folders to the views and translations
      app.settings.views = Array(app.settings.views).push(File.expand_path(File.join(File.dirname(__FILE__), '..', '..', '..', 'views')))

      app.get '/default/slider/slide-1' do
        if (background_slide_1 = SystemConfiguration::Variable.get_value('frontend.skin.default.slider1_img_bg', '.')) != '.'
          redirect background_slide_1
        else
          redirect "http://eazzy.me/html/rentit-onepage/assets/img/preview/slider/slide-1.jpg"
        end
      end

      #
      # Serves static content
      #
      app.get '/default/*' do

        serve_static_resource(request.path_info.gsub(/^\/default/,''), File.join(File.dirname(__FILE__), '..', '..', '..', 'static'), 'default')

      end

    end

  end
end
