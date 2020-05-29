class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(args)
    network = Network.new(args)
    network.shows << self
    network
  end

  def actors_list
    characters.map(&:actor).map(&:full_name)
  end
end
