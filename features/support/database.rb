require 'active_record'

ActiveRecord::Base.establish_connection(
    :adapter => "mysql2",
    :host => "127.0.0.1",
    :database => "company",
    :username => "root",
    :password => "qwer1234",
    :port => "3307"
)