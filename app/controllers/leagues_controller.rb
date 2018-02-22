class LeaguesController < ApplicationController
  def index
    @leagues = League.all
  end

  def show
    @league = League.find(params[:id])
  end

  def new
    @league = League.new
  end

  def create
      @league = League.new(league_params)
      if @league.save
        redirect_to leagues_path
      else
        render "new"
      end
    end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def league_params
      params.require(:league).permit(:name, :description)
    end
end
