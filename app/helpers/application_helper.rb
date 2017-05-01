#
module ApplicationHelper
  def name
    @name = current_user.name
  end

  def final_status_check(id)
    Project(id).final_status
  end
end
