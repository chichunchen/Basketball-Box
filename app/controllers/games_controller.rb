class GamesController < ApplicationController
	before_action :find_team

	def index
		@games = @team.games
	end

	def show
		@game = @team.games.find(params[:id])
		@players = @team.players
	end

	def new
		@game = @team.games.new
	end

	def create
		@game = @team.games.new game_params

		if @game.save
			redirect_to team_games_path(@team), notice: '賽事新增成功！'
		else
			render :new
		end
	end

	def edit
		@game = @team.games.find(params[:id])
	end

	def update
		@game = @team.games.find(params[:id])

		if @game.update game_params
			redirect_to team_games_path(@team), notice: '賽事修改成功！'
		else
			render :edit
		end
	end

	def destroy
		@game = @team.games.find(params[:id])
		if @game.destroy
			redirect_to team_games_path(@team), alert: '已刪除該賽事！'
		end
	end

	private

	def game_params
		params.require(:game).permit(:category_id, :rival)
	end

	def find_team
		@team = Team.find(params[:team_id])
	end
end
