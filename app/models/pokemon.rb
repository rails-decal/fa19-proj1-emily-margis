class Pokemon < ApplicationRecord
  belongs_to :trainer, optional: true
  validates :name, presence: true
  validates :ndex, presence: true
  # def initialize(params)
  #   @name = params[:name]
  #   @health = params[:health]
  #   @level = params[:level]
  #   @trainer_id = params[:trainer_id]
	# end
end
