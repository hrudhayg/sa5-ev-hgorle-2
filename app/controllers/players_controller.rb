class PlayersController < ApplicationController
 
    def index
      @team = Team.find(params[:team_id])
      @players = @team.players
      render :index
    end

    def show
        @team = Team.find(params[:team_id])
        @player = @team.players.find(params[:id])
        render :show
    end

    def new
        @team = Team.find(params[:team_id])
        @player = Player.new
        render :new
    end

    def create
        @team = Team.find(params[:team_id])
        @player = @team.players.build(params.require(:player).permit(:first_name, :last_name, :position))
        if @player.save
          flash[:success] = "Player was successfully created."
          redirect_to team_players_url(@team)
        else
          flash.now[:error] = "Error! Unable to create player."
          render :new, status: :unprocessable_entity
        end
    end
   

    def edit
        @team = Team.find(params[:team_id])
        @player = @team.players.find(params[:id])
        render :edit
      end

      def update
        @team = Team.find(params[:team_id])
        @player = @team.players.find(params[:id])
        if @player.update(params.require(:player).permit(:first_name, :last_name, :position))
          flash[:success] = "Player was successfully updated."
          redirect_to team_player_url(@team, @player)
        else
          flash.now[:error] = "'Error! Unable to update player."
          render :edit, status: :unprocessable_entity
        end
      end

      def destroy
        @team = Team.find(params[:team_id])
        @player = @team.players.find(params[:id])
        @player.destroy
        flash[:success] = "Player was successfully destroyed."
        redirect_to team_players_url(@team), status: :see_other
      end

  end