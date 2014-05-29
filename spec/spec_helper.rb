require 'rubygems'
require File.expand_path("../../config/application", __FILE__)

ActiveRecord::Base.establish_connection :adapter  => 'sqlite3',
                                        :database => DB_PATH.gsub('Ruby.db', 'test.db')
