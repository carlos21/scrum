
class SprintController < ApplicationController
  before_filter :set_sprint

  def set_sprint
    session[:sprint_id] = 1
  end

  def assign_pbi_to_sprint
    pbi_sprint_assignment = PbiSprintAssignment.new
    pbi_sprint_assignment.pbi_id = params[:pbi_id]
    pbi_sprint_assignment.sprint_id = session[:sprint_id]

    # Do the task
    PbiSprintAssignment.assign_or_unassign_according_action(pbi_sprint_assignment, params[:do])

    respond_to do |format|
      format.js
    end
  end

  def assign_pbi
    @pbis = Pbi.joins('left join pbi_sprint_assignments on pbi_sprint_assignments.pbi_id = pbis.id').where("
      pbi_sprint_assignments.sprint_id is null or pbi_sprint_assignments.sprint_id <> #{session[:sprint_id]} and pbis.status <> '#{Constants::PBI_STATUS_DONE}' ").order('pbis.id asc')
    @selected_pbis = Pbi.get_selected_pbis_by_sprint session[:sprint_id]

    respond_to do |format|
      format.html
    end
  end

  def create_pbi

    @pbi = Pbi.new
    @pbi.save
    @pbis = Pbi.where('status <> ' + Constants::PBI_STATUS_DONE).order('id asc')

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
