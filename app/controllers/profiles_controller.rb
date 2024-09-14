class ProfilesController < ApplicationController
  
  before_action :find_profile, except: [:index, :new, :create]
  
  def index
    @profiles = Profile.all
  end

  def new
  end

  def create
    profile = Profile.new(profile_params)

    if profile.save
      flash[:success] = "Profile saved successfully!"
      redirect_to profiles_path
    else
      flash.keep[:error] = "Error saving Profile."
      redirect_to new_profile_path
    end
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      flash[:success] = "Profile saved successfully!"
      redirect_to profiles_path
    else
      flash.keep[:error] = "Error saving Profile."
      redirect_to edit_profile_path
    end
  end

  private

  def profile_params
    params.require(:profiles).permit(
      :first_name,
      :last_name,
      :email,
      :contact_no,
      :birth_date,
      :gender,
      :country,
      :city,
      :address,
      :blood_group,
      :mother_name,
      :profession,
      :profession_details,
      :current_work_country,
      :current_work_city,
      :current_work_address,
      :relation,
      :first_meet_details,
      :last_meet_details,
      :qualities,
      :religion,
      :assistance_details,
      :education_details,
      :activity_report,
      :personal_traits,
      :connection_score,
      :interest_areas_list
    )
  end

  def find_profile
    @profile = Profile.find params[:id]
  end

end