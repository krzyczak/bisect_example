require "./lib/plotter.rb"

require "json"

config = JSON.parse(File.read("config.json"))

Plotter.new(config["data"]).plot
