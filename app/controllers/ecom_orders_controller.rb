class EcomOrdersController < ApplicationController
  def index; end

  def table_data
    orders = EcomOrder.limit(params[:size]).offset((params[:page].to_i - 1) * params[:size].to_i)

    if params[:page].present?
      render json: { data: EcomOrderPresenter.new(view_context).present(orders),
                     last_page: EcomOrder.all.count / params[:size].to_i }
    else
      render json: data
    end
  end
end
