#
module ApplicationHelper
  def name
    @name = current_user.name
  end

  def status_check
    Assign.find_by(user_id: current_user.id).status
  end
  def final_status_check(id)
    Project.find(id).final_status
  end
end
