class SprintController < ApplicationController

  def assign_pbi
    @pbis = Pbi.order('id asc')

    respond_to do |format|
      format.html
    end
  end

  def create_pbi

    @pbi = Pbi.new
    @pbi.save
    @pbis = Pbi.order('id asc')

    respond_to do |format|
      format.html
      format.js
    end

  end

  def update_pbi

    @pbi = Pbi.find(params[:pbi_id]) 
    @pbi.update_attributes(:description => params[:description])

    respond_to do |format|
      format.js
    end

  end

  def delete_pbi

    @pbi = Pbi.find(params[:pbi_id])
    @pbi.destroy
    @pbis = Pbi.order('id asc')

    respond_to do |format|
      format.js
    end

  end

end
