require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/cd')

get('/') do
  erb(:index)
end

get('/titles') do
  @titles = Organizer.all()
  erb(:titles)
end

post('/cd_title') do
  title = params.fetch('title')
  @title = Organizer.new(title)
  @title.save()
  erb(:success)
end
