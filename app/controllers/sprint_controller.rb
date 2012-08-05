class SprintController < ApplicationController

  def assign_pbi
    @pbis = Pbi.all

    respond_to do |format|
      format.html
    end
  end

  def create_pbi

    @pbi = Pbi.new
    @pbi.save
    @pbis = Pbi.all

    respond_to do |format|
      format.html
      format.js
    end

  end

  def update_pbi

    @pbi = Pbi.new
    @pbi.id = params[:pbi_id]
    @pbi.description = params[:description]
    @pbi.save

    logger.debug 'MIERDA CTM'
    logger.debug @pbi.description

    respond_to do |format|
      format.js
    end

  end

end
