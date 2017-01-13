class DrawingsController < ApplicationController
  def new
  	@drawing = Drawing.new
  end

  def create
  	@drawing = Drawing.create(drawing_params)
  	if @drawing.save
      redirect_to @drawing
    else
      render :action => "new"
    end
  end

  def show
  	@drawing = Drawing.where(id: params[:id]).first
  end

  def drawing_params
    params.require(:drawing).permit(:html).to_h
  end
end
