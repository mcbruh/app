class RecipesController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@user = current_user if user_signed_in?
		@recipes = Recipe.all	
	end

	private

	def recipe_params
		params.require(:recipe).permit(:name,:description, :instructions, :user_id, :recipe_ingredients_attributes => [:id, :ingredient_id, :recipe_id, :quantity] )
	end
end
