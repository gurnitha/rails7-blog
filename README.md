# rails7-blog
Learning Rails 7 by building a blog

#### 1. Create new rails app 'blog'

        new file:   .gitattributes
        modified:   .gitignore
        new file:   .ruby-version
        new file:   Gemfile
        new file:   Gemfile.lock
        modified:   README.md
        new file:   Rakefile
        new file:   app/assets/config/manifest.js
        new file:   app/assets/images/.keep
        new file:   app/assets/stylesheets/application.css
        new file:   app/channels/application_cable/channel.rb
        new file:   app/channels/application_cable/connection.rb
        new file:   app/controllers/application_controller.rb
        new file:   app/controllers/concerns/.keep
        new file:   app/helpers/application_helper.rb
        new file:   app/javascript/application.js
        new file:   app/javascript/controllers/application.js
        new file:   app/javascript/controllers/hello_controller.js
        new file:   app/javascript/controllers/index.js
        new file:   app/jobs/application_job.rb
        new file:   app/mailers/application_mailer.rb
        new file:   app/models/application_record.rb
        new file:   app/models/concerns/.keep
        new file:   app/views/layouts/application.html.erb
        new file:   app/views/layouts/mailer.html.erb
        new file:   app/views/layouts/mailer.text.erb
        new file:   bin/bundle
        new file:   bin/importmap
        new file:   bin/rails
        new file:   bin/rake
        new file:   bin/setup
        new file:   config.ru
        new file:   config/application.rb
        new file:   config/boot.rb
        new file:   config/cable.yml
        new file:   config/credentials.yml.enc
        new file:   config/database.yml
        new file:   config/environment.rb
        new file:   config/environments/development.rb
        new file:   config/environments/production.rb
        new file:   config/environments/test.rb
        new file:   config/importmap.rb
        new file:   config/initializers/assets.rb
        new file:   config/initializers/content_security_policy.rb
        new file:   config/initializers/filter_parameter_logging.rb
        new file:   config/initializers/inflections.rb
        new file:   config/initializers/permissions_policy.rb
        new file:   config/locales/en.yml
        new file:   config/puma.rb
        new file:   config/routes.rb
        new file:   config/storage.yml
        new file:   db/seeds.rb
        new file:   lib/assets/.keep
        new file:   lib/tasks/.keep
        new file:   log/.keep
        new file:   public/404.html
        new file:   public/422.html
        new file:   public/500.html
        new file:   public/apple-touch-icon-precomposed.png
        new file:   public/apple-touch-icon.png
        new file:   public/favicon.ico
        new file:   public/robots.txt
        new file:   storage/.keep
        new file:   test/application_system_test_case.rb
        new file:   test/channels/application_cable/connection_test.rb
        new file:   test/controllers/.keep
        new file:   test/fixtures/files/.keep
        new file:   test/helpers/.keep
        new file:   test/integration/.keep
        new file:   test/mailers/.keep
        new file:   test/models/.keep
        new file:   test/system/.keep
        new file:   test/test_helper.rb
        new file:   tmp/.keep
        new file:   vendor/.keep
        new file:   vendor/javascript/.keep

#### 2. Generate a model article and run migration

        > rails generate model article title:string content:text
        invoke  active_record
        create    db/migrate/20230818082725_create_articles.rb
        create    app/models/article.rb
        invoke    test_unit
        create      test/models/article_test.rb
        create      test/fixtures/articles.yml

        > rails db:migrate
        == 20230818082725 CreateArticles: migrating ===================================
        -- create_table(:articles)
           -> 0.0036s
        == 20230818082725 CreateArticles: migrated (0.0039s) ==========================

        modified:   README.md
        new file:   app/models/article.rb
        new file:   db/migrate/20230818082725_create_articles.rb
        new file:   db/schema.rb
        new file:   test/fixtures/articles.yml
        new file:   test/models/article_test.rb

#### 3. Generate a controller 'articles'

        > rails generate controller articles
        create  app/controllers/articles_controller.rb
        invoke  erb
        create    app/views/articles
        invoke  test_unit
        create    test/controllers/articles_controller_test.rb
        invoke  helper
        create    app/helpers/articles_helper.rb
        invoke    test_unit

        modified:   README.md
        new file:   app/controllers/articles_controller.rb
        new file:   app/helpers/articles_helper.rb
        new file:   test/controllers/articles_controller_test.rb

#### 4. Creating 'Hello World!' using Controller, Views, Route

        modified:   app/controllers/articles_controller.rb
        new file:   app/views/articles/index.html.erb
        modified:   config/routes.rb
