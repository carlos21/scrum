class SprintController < ApplicationController
  before_filter :set_sprint

  def set_sprint
    session[:sprint_id] = 1
  end

  def assign_pbi_to_sprint
    @pbi = Pbi.find(params[:pbi_id])
    @pbi.assign_or_unassign_according_action(session[:sprint_id], params[:do])
    logger.debug 'tmr'
    logger.debug params[:do]
    logger.debug 'zzz'
    respond_to do |format|
      format.js
    end
  end

  def assign_pbi
    @pbis = Pbi.order('id asc')
    #@sprint = Sprint.find(1);

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
