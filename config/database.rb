require 'bundler/setup'
Bundler.require

configure :development do
  database_name = "drinkee-#{ENV['RACK_ENV']}"

  db = URI.parse(ENV['DATABASE_URL'] || "postgres://localhost/#{database_name}")

  # connect ActiveRecord with the current database
  ActiveRecord::Base.establish_connection(
    :adapter  => 'postgresql',
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => "#{database_name}",
    :encoding => 'utf8'
  )
end

configure :production do
  db = URI.parse(ENV['DATABASE_URL'])

  ActiveRecord::Base.establish_connection(
    :adapter  => 'postgresql',
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
end
