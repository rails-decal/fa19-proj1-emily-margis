class PokemonsController < ApplicationController
    def capture
        pokemon = Pokemon.where(id: params[:id]).first
        pokemon.trainer = current_trainer
        pokemon.save
        redirect_to url_for(controller: 'home', action: 'index')
    end
    def damage
        pokemon = Pokemon.where(ndex: params[:id]).first
        pokemon.health = pokemon.health - 10
        if (pokemon.health <=0)
            pokemon.destroy
        else
            pokemon.save
        end
        trainer = params[:trainer]
        redirect_to current_trainer
    end
    def new
        @pokemon = Pokemon.new
    end
    def create
        @name = params[:pokemon][:name]
        @ndex = params[:pokemon][:ndex]
        @pokemon = Pokemon.new({name: @name, ndex: @ndex, level: 1, health: 100, trainer_id: current_trainer.id})
        if @pokemon.valid?
            @pokemon.save!
            redirect_to '/trainers/' + current_trainer.id.to_s
        else
            flash[:error] = @pokemon.errors.full_messages.to_sentence
            redirect_to '/pokemons/new'
        end
    end
end
