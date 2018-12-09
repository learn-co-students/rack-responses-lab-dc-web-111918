class Application

  def call(env)
    greeting = Rack::Response.new

    time = Time.now

    if time.hour <= 12
      greeting.write "Good Morning"
    else
      greeting.write "Good Afternoon"
    end

    greeting.finish
  end

end
