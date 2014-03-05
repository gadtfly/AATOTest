class ChurchesController < ApplicationController
  before_action :set_church, only: [:show, :edit, :update, :destroy]

  def index
    @churches = Church.all
  end

  def show
  end

  def new
    @church = Church.new
  end

  def edit
  end

  def create
    @church = Church.new(church_params)

    if @church.save
      redirect_to @church
    else
      render :new
    end
  end

  def update
    if @church.update(church_params)
      redirect_to @church
    else
      render :edit
    end
  end

  def destroy
    @church.destroy
    redirect_to :churches
  end

private

  def set_church
    @church = Church.find(params[:id])
  end

  def church_params
    params.require(:church).permit(:name, :denomination_list, :tag_list)
  end
end
