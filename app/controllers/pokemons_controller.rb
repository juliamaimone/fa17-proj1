class PokemonsController < ApplicationController

	def index
		@pokemon = Pokemon.all
	end

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update_attribute(:trainer_id, @current_trainer.id)
		redirect_to "/"
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10
		@pokemon.save
		if @pokemon.health <= 0
			@pokemon.destroy
		end
		redirect_to trainer_path(@pokemon.trainer)
	end


	def create
		@pokemon = Pokemon.new
		@pokemon.name = params[:pokemon][:name]
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer = current_trainer

		if @pokemon.save
			redirect_to trainer_path(@pokemon.trainer)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_pokemon_path
		end
	end

	def new
		@pokemon = Pokemon.new
	end

end
