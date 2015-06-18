require 'active_record'
require 'sqlite3'
require 'yaml'
require_relative '../app/models/chef'
require_relative '../app/models/ingredient'
require_relative '../app/models/ingredient_in_meal'
require_relative '../app/models/meal'

configuration = YAML::load_file(File.join(__dir__, 'database.yml'))
ActiveRecord::Base.establish_connection(configuration['development'])
