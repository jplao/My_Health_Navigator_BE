class Api::V1::InsurancesController < ApplicationController

  def create
    begin
      api_key_error
      insurance = Insurance.create(params_in)
      render json: InsuranceSerializer.new(insurance), status: 201
    rescue StandardError => err
      render json:{message: err}, status: 422
    end
  end

  def index
    begin
      api_key_error
      insurances = Insurance.where(profile_id: params[:profile_id])
      render json: InsuranceSerializer.new(insurances)
    rescue StandardError => err
      render json:{message: err}, status: 422
    end
  end

  private

  def params_in
    params.permit(:insurance_type,
                  :carrier,
                  :id_number,
                  :group_number,
                  :phone_number,
                  :profile_id)
  end

  def find_user
    User.find_by(api_key: params[:api_key])
  end

  def profile_ids
    Profile.where(user_id: find_user.id).pluck(:id)
  end

  def api_key_error
    id_in = params[:profile_id].to_i
    raise 'Bad API key' unless profile_ids.include?(id_in)
  end
end
