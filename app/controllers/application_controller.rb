class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Phase 3 project. We got this!" }.to_json
  end

  # artist section

  get "/artists" do
    Artist.all.to_json(include: :shows)
  end

  get "/artists/:id" do
    artist = Artist.find(params[:id])
    artist.to_json
  end

  # venue section

  get "/venues" do
    venue = Venue.all
    venue.to_json(include: :shows)
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
    Show.all.to_json(:include=> [:artist, :venue])
  end

  # get "/shows" do
  #   Show.all.to_json(include: :venue)
  # end

  get "/shows/:id" do
    show = Show.find(params[:id])
    show.to_json(:include=> [:artist, :venue])
  end

  post "/shows" do
    show = Show.create(
      name: params[:name],
      date: params[:date],
      time: params[:time],
      artist_id: params[:artist_id],
      venue_id: params[:venue_id]
    )
    show.to_json
  end

  patch "/shows/:id" do
    show = Show.find(params[:id])
    show.update(
      name: params[:name],
      date: params[:date],
      time: params[:time],
      venue: params[:venue],
      artist: params[:artist]
    )
    show.to_json
  end

  delete "/shows/:id" do
    show = Show.find(params[:id])
    show.destroy
    show.to_json
  end

end
