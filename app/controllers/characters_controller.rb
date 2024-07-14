class CharactersController < ApplicationController
  def index
    @characters = Character.all.map do |character|
      if character.image.attached?
        { id: character.id, image_url: url_for(character.image) }
      else
        { id: character.id }
      end
    end
    render json: @characters
  end

  def show
    @character = Character.find(params[:id])
  end

  private

  def character_params
    params.require(:character).permit(:name, :debut_episode, :affiliation_id)
  end
end