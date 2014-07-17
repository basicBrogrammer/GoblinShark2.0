class GamePlaysController < ApplicationController
  include GamePlaysHelper
   before_action :restart, only: [:show, :edit, :update, :destroy]

  def index
    newgame if GamePlay.all == []
    @game_plays = GamePlay.all
    @current_room = @game_plays.last.room
    @gameover = false
  end

  def show

  end

  def restart
    reset_game
    redirect_to root_url
  end

  def new
    @game_play =GamePlay.create(room_id: params[:room_id])
    redirect_to root_url
  end

  def shoot
    if Room.find(params[:weapon]).goblin_shark
      flash[:shoot] = "You win"

    else
      flash[:miss] =  "Your anchor missed"
    end
  redirect_to root_url
  end

  def edit

  end

  def create
    @game_play = GamePlay.new(game_play_params)

    respond_to do |format|
      if @game_play.save
        format.html { redirect_to @game_play, notice: 'Game play was successfully created.' }
        format.json { render :show, status: :created, location: @game_play }
      else
        format.html { render :new }
        format.json { render json: @game_play.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @game_play.update(game_play_params)
        format.html { redirect_to @game_play, notice: 'Game play was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_play }
      else
        format.html { render :edit }
        format.json { render json: @game_play.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @game_play.destroy
    respond_to do |format|
      format.html { redirect_to game_plays_url, notice: 'Game play was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_play
      @game_play = GamePlay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_play_params
      params.require(:game_play).permit(:player_room, :room_id)
    end
end
