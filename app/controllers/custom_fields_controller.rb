class CustomFieldsController < ApplicationController
  def new
  end

  def create
    cf = CustomField.new(custom_field_params)
    cf.save
  end

  private

  def find_custom_field
    @custom_field = @CustomField.find(params[:id])
  end

  def custom_field_params
    params.require(:custom_field).permit(:name, :value_type)
  end
end
