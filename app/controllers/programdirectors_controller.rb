class ProgramdirectorsController < ApplicationController
  def index
    @programdirectors = Programdirector.all
  end
  
  def show
    @programdirector = Programdirector.find(params[:id])
  end
  
  def new
    @programdirector = Programdirector.new
  end

  def create
    @programdirector = Programdirector.new(programdirector_params)

    if @programdirector.save
      redirect_to @programdirector
    else
      render :new
    end
  end
  
  def edit
    @programdirector = Programdirector.find(params[:id])
  end

  def update
    @programdirector = Programdirector.find(params[:id])

    if @programdirector.update(programdirector_params)
      redirect_to @programdirector
    else
      render :edit
    end
  end
  
  def destroy
    @programdirector = Programdirector.find(params[:id])
    @programdirector.destroy

    redirect_to root_path
  end
  
  private
    def programdirector_params
      params.require(:programdirector).permit(:Name, :CWID)
    end
end
