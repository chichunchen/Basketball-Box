class GamesController < ApplicationController
	before_action :find_team

	def index

	end

	def show
		
	end

	def new
		@game = @team.games.new
	end

	def create
		@game = @team.games.new game_params

		if @game.save
			redirect_to team_path(@team), notice: '賽事新增成功！'
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
			redirect_to team_path(@team), notice: '賽事修改成功！'
		else
			render :edit
		end
	end

	def destroy
		@game = @team.games.find(params[:id])
		if @game.destroy
			redirect_to team_path(@team), alert: '已刪除該賽事！'
		end
	end

	private

	def game_params
		params.require(:game).permit(:name, :rival)
	end

	def find_team
		@team = Team.find(params[:team_id])
	end
end
