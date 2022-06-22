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
    artist.to_json
  end

  # venue section

  get "/venues" do
    venue = Venue.all
    venue.to_json
  end

  get "/venues/:id" do
    venue = Venue.find(params[:id])
    venue.to_json
  end

  patch "/venues/:id" do
    venue = Venue.find(params[:id])
    venue.update(
      name: params[:name],
      location: params[:location],
      image: params[:image]
    )
    venue.to_json
  end

  # shows section

  get "/shows" do
    show = Show.all
    show.to_json
  end

  get "/shows/:id" do
    show = Show.find(params[:id])
    show.to_json
  end

  post "/shows" do
    show = Show.create(
      name: params[:name],
      date: params[:date],
      artist_id: params[:artist_id],
      venue_is: params[:venue_id]
    )
    show.to_json
  end

  delete "/shows/:id" do
    show = Show.find(params[:id])
    show.destroy
    show.to_json
  end

end
