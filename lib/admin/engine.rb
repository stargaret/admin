module MobMeAdmin

  class Engine < Rails::Engine

    initialize "mob_me_admin.load_app_instance_data" do |app|
      TeamPage.setup do |config|
        config.app_root = app.root
      end
    end

    initialize "mob_me_admin.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end

  end

end