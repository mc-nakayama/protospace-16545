class PrototypesController < ApplicationController
 before_action :set_param, only: [:show, :edit]


  def index
    @user = current_user
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    prototype = Prototype.new(prototype_params)
    if prototype.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if Prototype.update(prototype_params)
      redirect_to edit_prototype_path(@prototype.id)
    else
      redirect_to prototype_path(@prototype.id)
    end
  end


  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept,:image).merge(user_id: current_user.id)
  end

  def set_param
    @prototype = Prototype.find(params[:id])
  end


end
