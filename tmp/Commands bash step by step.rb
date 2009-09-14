amorim@amorim:~/projetos/dev$ rails _2.1.1_ clean_loca -d mysql
      create
      create  app/controllers
      create  app/helpers
      create  app/models
      create  app/views/layouts
      create  config/environments
      create  config/initializers
      create  db
      create  doc
      create  lib
      create  lib/tasks
      create  log
      create  public/images
      create  public/javascripts
      create  public/stylesheets
      create  script/performance
      create  script/process
      create  test/fixtures
      create  test/functional
      create  test/integration
      create  test/unit
      create  vendor
      create  vendor/plugins
      create  tmp/sessions
      create  tmp/sockets
      create  tmp/cache
      create  tmp/pids
      create  Rakefile
      create  README
      create  app/controllers/application.rb
      create  app/helpers/application_helper.rb
      create  test/test_helper.rb
      create  config/database.yml
      create  config/routes.rb
      create  config/initializers/inflections.rb
      create  config/initializers/mime_types.rb
      create  config/initializers/new_rails_defaults.rb
      create  config/boot.rb
      create  config/environment.rb
      create  config/environments/production.rb
      create  config/environments/development.rb
      create  config/environments/test.rb
      create  script/about
      create  script/console
      create  script/dbconsole
      create  script/destroy
      create  script/generate
      create  script/performance/benchmarker
      create  script/performance/profiler
      create  script/performance/request
      create  script/process/reaper
      create  script/process/spawner
      create  script/process/inspector
      create  script/runner
      create  script/server
      create  script/plugin
      create  public/dispatch.rb
      create  public/dispatch.cgi
      create  public/dispatch.fcgi
      create  public/404.html
      create  public/422.html
      create  public/500.html
      create  public/index.html
      create  public/favicon.ico
      create  public/robots.txt
      create  public/images/rails.png
      create  public/javascripts/prototype.js
      create  public/javascripts/effects.js
      create  public/javascripts/dragdrop.js
      create  public/javascripts/controls.js
      create  public/javascripts/application.js
      create  doc/README_FOR_APP
      create  log/server.log
      create  log/production.log
      create  log/development.log
      create  log/test.log
amorim@amorim:~/projetos/dev$ cd clean_loca/
amorim@amorim:~/projetos/dev/clean_loca$ ls
app     db   lib  public    README  test  vendor
config  doc  log  Rakefile  script  tmp
amorim@amorim:~/projetos/dev/clean_loca$ git remote add origin git@github.com:mauriciodeamorim/locamotiva_clean.git
fatal: Not a git repository
amorim@amorim:~/projetos/dev/clean_loca$ git init
Initialized empty Git repository in /home/amorim/projetos/dev/clean_loca/.git/
amorim@amorim:~/projetos/dev/clean_loca$ git remote add origin git@github.com:mauriciodeamorim/locamotiva_clean.git
amorim@amorim:~/projetos/dev/clean_loca$ git status
# On branch master
# Initial commit
amorim@amorim:~/projetos/dev/clean_loca$ git add .
amorim@amorim:~/projetos/dev/clean_loca$ git commit -a -m "First commit."
Created initial commit 7bd288e: First commit.
 45 files changed, 8270 insertions(+), 0 deletions(-)
amorim@amorim:~/projetos/dev/clean_loca$ git st
# On branch master
nothing to commit (working directory clean)
amorim@amorim:~/projetos/dev/clean_loca$ git checkout -b working
Switched to a new branch "working"
amorim@amorim:~/projetos/dev/clean_loca$ script/generate rspec
:0:Warning: Gem::SourceIndex#search support for Regexp patterns is deprecated
      exists  lib/tasks
      create  lib/tasks/rspec.rake
      create  script/autospec
      create  script/spec
      create  script/spec_server
      create  spec
      create  spec/rcov.opts
      create  spec/spec.opts
      create  spec/spec_helper.rb
amorim@amorim:~/projetos/dev/clean_loca$ git add .
amorim@amorim:~/projetos/dev/clean_loca$ git commit -a -m "Change databases name and generate rspec files."
Created commit 9dd1285: Change databases name and generate rspec files.
 8 files changed, 269 insertions(+), 4 deletions(-)
amorim@amorim:~/projetos/dev/clean_loca$ rake db:create:all
amorim@amorim:~/projetos/dev/clean_loca$ script/generate rspec_model Race
name:string stage:string date:datetime place:string distance:string url:string
:0:Warning: Gem::SourceIndex#search support for Regexp patterns is deprecated
      exists  app/models/
      create  spec/models/
      create  spec/fixtures/
:0:Warning: Gem::SourceIndex#search support for Regexp patterns is deprecated
      create  app/models/race.rb
      create  spec/models/race_spec.rb
      create  spec/fixtures/races.yml
      create  db/migrate
      create  db/migrate/20090710012938_create_races.rb
amorim@amorim:~/projetos/dev/clean_loca$ git add .
amorim@amorim:~/projetos/dev/clean_loca$ git commit -a -m "Create databases and rspec_model Race."
Created commit 63ad850: Create databases and rspec_model Race.
 amorim@amorim:~/projetos/dev/clean_loca$ rake db:migrate
== 20090710012938 CreateRaces: migrated (0.0051s) =============================
amorim@amorim:~/projetos/dev/clean_loca$ rake spec
(in /home/amorim/projetos/dev/clean_loca)
Race
- should create a new instance given valid attributes
- should be not valid when empty
- should require Name
- should require Date
- should require Distance
- should not valid if name greater than 150 characters

Finished in 0.113745 seconds

6 examples, 0 failures
amorim@amorim:~/projetos/dev/clean_loca$ git status
no changes added to commit (use "git add" and/or "git commit -a")
amorim@amorim:~/projetos/dev/clean_loca$ git add .
amorim@amorim:~/projetos/dev/clean_loca$ git commit -a -m "Included rspec test for Race."
amorim@amorim:~/projetos/dev/clean_loca$ reset (para limpar o buffer do terminal)
amorim@amorim:~/projetos/dev/clean_loca$ script/generate rspec_controller Race index edit new show
:0:Warning: Gem::SourceIndex#search support for Regexp patterns is deprecated
      exists  app/controllers/
      exists  app/helpers/
      create  app/views/race
      create  spec/controllers/
      create  spec/helpers/
      create  spec/views/race
      create  spec/controllers/race_controller_spec.rb
      create  spec/helpers/race_helper_spec.rb
:0:Warning: Gem::SourceIndex#search support for Regexp patterns is deprecated
      create  app/controllers/race_controller.rb
      create  app/helpers/race_helper.rb
      create  spec/views/race/index.html.erb_spec.rb
      create  app/views/race/index.html.erb
      create  spec/views/race/edit.html.erb_spec.rb
      create  app/views/race/edit.html.erb
      create  spec/views/race/new.html.erb_spec.rb
      create  app/views/race/new.html.erb
      create  spec/views/race/show.html.erb_spec.rb
      create  app/views/race/show.html.erb
amorim@amorim:~/projetos/dev/clean_loca$

