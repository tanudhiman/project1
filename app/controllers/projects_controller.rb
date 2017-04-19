class ProjectsController < ApplicationController

  def index

    @project=Project.all

  end
  def new
    @project= Project.new
 #@project.paginate(:page => params[:page], :per_page => 1)
  end
  def create

    @project= Project.new(create_params)

    if @project.save
    flash[:success]= "Project got created successfully"
    redirect_to new_project_path
  else
    render 'new'
  end
  end
  def view1
   @project = Project.where(user_id:current_user.id).page(params[:page]).per(1)

   #@project=@project.paginate(:page => params[:page], :per_page => 1)
  end
  def edit
    @project= Project.find(params[:id])

  end
  def update
    @project=Project.find(params[:id])
    if @project.update_attributes(update_params)
      redirect_to view1_path
      flash[:success]= "Project got updated successfully"
    end
  end
  def show

  end


  def destroy
  @project = Project.find(params[:id])
   if @project.destroy
    flash[:success]="Project got deleted successfully"
    redirect_to view1_path
   end
 end
 def final_status

   @final_status=params[:final_status]
   @pro=Project.find_by_user_id(current_user.id)
   @pro.update_attributes(:final_status => @final_status)

  end
  def image_download
   @project=Project.find(params[:id])
    file_path = @project.avatar_file_name
    if !file_path.nil?
    send_file "#{Rails.root}/public/system/photos/#{@project.id}/original/#{file_path}", :x_sendfile => true
else
       redirect_to view1_path
     end
end


 end
private
 def create_params

   params.require(:project).permit(:name,:requirements,:domain,:user_id,:avatar,:document)
 end
 def update_params
   params.require(:project).permit(:name,:requirements,:domain,:avatar,:document)
 end
