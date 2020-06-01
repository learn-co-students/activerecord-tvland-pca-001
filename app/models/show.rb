class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    list = []
    actor_full_name = "#{characters.first.actor.first_name} #{characters.first.actor.last_name}"
    list << actor_full_name
    list
  end
end
