require './lib/mouth-instrument'

Gem::Specification.new do |s|
  s.name = 'mouth-instrument'
  s.version = Mouth::INSTRUMENT_VERSION
  s.author = 'Jonathan Novak'
  s.email = 'jnovak@gmail.com'
  s.homepage = 'http://github.com/cypriss/mouth-instrument'
  s.summary = 'Instrument your app to send metrics to a Mouth'
  s.description = 'Instrument your app to send metrics to a Mouth.  Sends UDP packets to Mouth for Counters, Timers, and Gauges.'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files test`.split("\n")
end
