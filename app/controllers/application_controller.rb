class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Phase 3 project. We got this!" }.to_json
  end

  # artist section

  get "/artists" do
    Artist.all.to_json(include: :events)
  end

  get "/artists/:id" do
    artist = Artist.find(params[:id])
    artist.to_json
  end

  # venue section

  get "/venues" do
    venue = Venue.all
    venue.to_json(include: :events)
  end

  get "/venues/:id" do
    venue = Venue.find(params[:id])
    venue.to_json
  end

  patch "/venues/:id" do
    venue = Venue.find(params[:id])
    venue.update(
      venue_name: params[:venue_name],
      location: params[:location],
      image: params[:image]
    )
    venue.to_json
  end

  # events section

  get "/events" do
    Event.all.to_json(:include=> [:artist, :venue])
    # Show.all.to_json(:include=> {:artist=>{:include=> {:name}}}, :venue=> {:include=> {{:name}}})
  end


  get "/events/:id" do
    event = Event.find(params[:id])
    event.to_json(:include=> [:artist, :venue])
    # show.to_json(:include=> {:artist=>
    #   {:include=> {:name}}},
    #         :venue=>
    #         {:include=> {{:name}}})
  end

  post "/events" do
    event = Event.create(
      event_name: params[:event_name],
      date: params[:date],
      time: params[:time],
      artist_id: params[:artist_id],
      venue_id: params[:venue_id]
    )
    show.to_json
  end

  patch "/events/:id" do
    event = Event.find_or_create_by(event_name: params[:event_name])
    # puts show
    # show.to_json
    event.update(
      event_name: params[:event_name],
      date: params[:date],
      time: params[:time],
      artist_id: params[:artist_id],
      venue_id: params[:venue_id]
    )
    event.artist.update(
      artist_name: params[:artist_name]
      # Artist.all.include?(show.artist.name) ? Artist.create((name: params[:name]) : (name: params[:name]))
    )
    event.venue.update(
      venue_name: params[:venue_name]
    )
    event.to_json
  end

  delete "/events/:id" do
    event = Event.find(params[:id])
    event.destroy
    event.to_json
  end

end
