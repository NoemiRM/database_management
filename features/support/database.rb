require 'active_record'

ActiveRecord::Base.establish_connection(
    :adapter => "mysql2",
    :host => "localhost",
    :database => "company",
    :username => "root",
    :password => "123456",
    :port => "3307"

)