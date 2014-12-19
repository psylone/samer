require 'yaml'
require 'samer/data_provider'
require 'samer/engine'

module Samer

  def self.find_for name
    @engine ||= Engine.new(DataProvider.new.prepare)
    @engine.find_for name
  end

end