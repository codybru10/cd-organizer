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

get('/artists') do
  @artists = Artist.all()
  erb(:artists)
end

post('/cd_title') do
  title = params.fetch('title')
  @title = Organizer.new(title)
  @title.save()
  erb(:success)
end

post('/cd_artist') do
  artists = params.fetch('artist')
  @artists = Artist.new(artist)
  @artists.save()
  erb(:success)
end
