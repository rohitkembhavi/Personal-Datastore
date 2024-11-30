class CustomFieldsController < ApplicationController

  def index
    @custom_fields = CustomField.all

    redirect_to new_custom_field_path if @custom_fields.blank?
  end

  def new
    @custom_field = CustomField.new
  end

  def create
    cf = CustomField.new(custom_field_params)
    cf.save

    redirect_to custom_fields_path
  end

  def destroy
    custom_field = CustomField.find(params[:id])
    custom_field.destroy
    redirect_to custom_fields_path
  end

  private

  def find_custom_field
    @custom_field = @CustomField.find(params[:id])
  end

  def custom_field_params
    params.permit(:name, :value_type)
  end
end
