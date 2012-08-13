class ActivityController < ApplicationController

  before_filter :set_sprint

  def set_sprint
    session[:sprint_id] = 1
  end
  
  def taskboard
    # get pbis for a sprint
    @pbis = Pbi.find_by_sql("select p.id, p.description, p.status from pbis p 
                             inner join pbi_sprint_assignments psa 
                             on psa.pbi_id = p.id 
                             where psa.sprint_id = #{session[:sprint_id]}")
    @activities = Activity.all()
    
    respond_to do |format|
      format.html
    end

  end

  def create_activity

    @pbi = Pbi.find(params[:pbi_id])

    @activity = Activity.new
    @activity.status = Constants::ACTIVITY_TODO
    @activity.created_at = Time.now
    @activity.updated_at = Time.now
    @activity.pbi_id = params[:pbi_id]
    @activity.save

    @activities_collection = Activity.where(:pbi_id => params[:pbi_id])

    respond_to do |format|
      format.js
    end

  end

  def update_activity

    @activity = Activity.find(params[:activity_id]) 
    @activity.update_attributes(:description => params[:description])

    respond_to do |format|
      format.js
    end

  end

  def delete_activity

  end

  def change_activity_status

    @activity = Activity.find(params[:activity_id])
    @activity.status = params[:status]
    @activity.pbi_id = params[:pbi_id]
    @activity.save

    respond_to do |format|
      format.js
    end

  end

end
