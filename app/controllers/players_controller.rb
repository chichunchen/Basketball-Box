class PlayersController < ApplicationController
	before_action :find_team

	def new
		@player = @team.players.new
	end
	
	def create
		@player = @team.players.new(player_params)

		if @player.save
			redirect_to team_path(@team), notice: '隊員新增成功！'
		else
			render :new
		end
	end

	def edit
		@player = @team.players.find(params[:id])
	end

	def update
		@player = @team.players.find(params[:id])

		if @player.update player_params
			redirect_to team_path(@team), notice: '隊員修改成功！'
		else
			render :edit
		end
	end

	def destroy
		@player = @team.players.find(params[:id])
		if @player.destroy
			redirect_to team_path(@team), alert: '已刪除隊員！'
		end
	end

	def show
		# for player analysis
		@player = @team.players.find(params[:id])
		@statistic = @player.statistic
	end

	private

	def player_params
		params.require(:player).permit(:number, :name)
	end

	def find_team
		@team = Team.find(params[:team_id])
	end
end
