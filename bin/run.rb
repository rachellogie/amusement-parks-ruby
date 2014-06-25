require_relative '../lib/park_parser'
require 'yaml'
require 'pp'

file = File.read(File.expand_path('../data/amusement_parks.yml', __dir__))
parks_array = YAML.load(file)

pp ParkParser.new(parks_array).group_by_country_and_state
