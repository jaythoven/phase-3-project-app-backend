class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Phase 3 project. We got this!" }.to_json
  end

  # artist section

  get "/artists" do
    artist = Artist.all
    artist.to_json
  end

  get "/artists/:id" do
    artist = Artist.find(params[:id])
    game.to_json
  end

  # venue section

  get "/venues" do
    venue = Venue.all
    venue.to_json
  end

  # shows section

  get "/shows" do
    show = Show.all
    show.to_json
  end

end
