class UsersController < ApplicationController

before_action :set_user

  def personal_info_users
    if @user.form_user_filled?
      redirect_to company_info_users_path
    end
  end

  def company_info_users
    if @user.form_company_all_filled?
      redirect_to toto_path
    end
  end

  def update
    @user.update(user_params)
      if @user.form_user_filled? && !@user.form_company_at_least_one_filled?
        redirect_to company_info_users_path
      elsif @user.form_user_filled? && @user.form_company_all_filled?
        redirect_to toto_path
      else
        redirect_to toto_path
      end
    #met à jour mon utilisateur avec les données de mon user
    # en fonction de l'état de remplissage je redirige vers une page différente personal_info ou
    # utilisant current_user.form_company_filled? true = redirige vers l'étape suivante, false màj de la company
  end

  def info
  end


  private

  def user_params
  params.require(:user).permit(:first_name, :last_name, :birth_last_name, :company_name, :company_address)
  end

  def set_user
    @user = current_user
  end

end
