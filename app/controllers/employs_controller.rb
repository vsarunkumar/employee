class EmploysController < ApplicationController
  def index
  	@employs = Employ.all
  end

  def show
    @employ = Employ.find(params[:id])
  end

  def new
    @employ = Employ.new
  end

  def create
    @employ = Employ.new(employe_params)
    if @employ.save	
      redirect_to employs_path
    else
      render('new')
    end
  end

  def delete
    @employ = Employ.find(params[:id])
  end

  def destroy
    employ = Employ.find(params[:id])
    employ.destroy
    redirect_to(action: 'index')
  end

  def edit
    @employ = Employ.find(params[:id])
  end

  def update
    @employ = Employ.find(params[:id])
    if @employ.update_attributes(employe_params)
      redirect_to(action: 'show', id: @employ.id)
    else
      render('edit')
    end
  end

  private

  def employe_params
    params.require(:employ).permit(:name, :role)
  end
end
