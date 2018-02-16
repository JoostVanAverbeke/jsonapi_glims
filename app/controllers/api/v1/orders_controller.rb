require 'silvio_glims'
class Api::V1::OrdersController < ApplicationController
  def index
    orders = Order.all
    render json: JSONAPI::Serializer.serialize(orders, base_url: request_base_url, namespace: Api::V1, is_collection: true)
  end

  def show
    order = Order.get(params[:id])
    render json: JSONAPI::Serializer.serialize(order, base_url: request_base_url, namespace: Api::V1)
  end

  private
  def request_base_url
    "#{request.protocol}#{request.host_with_port}"
  end
end