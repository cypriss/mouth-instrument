# mouth-instrument

Mouth-instrument is a very lightweight Ruby gem that you can use to instrument your apps to collect metrics.  It sends these metrics via UDP to a [mouth](http://www.github.com/cypriss/mouth) daemon for storage and analysis.

## What is Mouth?

[Mouth](http://www.github.com/cypriss/mouth) is a Ruby daemon that collects metrics via UDP and stores them in Mongo.  It comes with a modern UI that allows you to view graphs and create dashboards of these statistics.

## Using mouth-instrument

First, install the gem via you Gemfile or do so manually:

    gem install mouth-instrument

Then, include it in your app:

    require 'mouth-instrument'

Configure it to point to your daemon. In a Rails app, you might want to put this in config/initializers/mouth.rb

    Mouth.daemon_hostport = "localhost:8889"

Then, instrument your app:

    # Count things like this:
    Mouth.increment("myapp.occurances")
    
    # Measure timings like this:
    Mouth.measure("myapp.happening") do
      do_happening!
    end
    
    # Or, like this (23.9 is in milliseconds):
    Mouth.measure("myapp.happening", 23.9)
    
    # Gauge values like this:
    Mouth.gauge("myapp.subscriber_count", 1230) # I have 1230 customers right now!

Please see the [Mouth](http://www.github.com/cypriss/mouth) project for more information!
    