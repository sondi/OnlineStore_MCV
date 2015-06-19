require 'active_record'
require 'sqlite3'
require 'yaml'

require_relative '../app/models/user'
require_relative '../app/models/product'
require_relative '../app/controller/main_controller'
require_relative '../app/view/main_view'

configuration = YAML::load_file(File.join(__dir__, 'database.yml'))
ActiveRecord::Base.establish_connection(configuration['development'])
