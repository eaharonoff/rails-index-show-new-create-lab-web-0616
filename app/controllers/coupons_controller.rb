require 'pry'
class CouponsController < ApplicationController
  def index 
    @coupons = Coupon.all
  end

  def show 
    @coupon = Coupon.find(params[:id])
  end

  def new
  end

  def create
    # binding.pry
    @coupon = Coupon.create(coupon_params)
    #(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    #binding.pry
    redirect_to coupon_path(@coupon)
  end

  def coupon_params
  params.require(:coupon).permit(:coupon_code, :store)
  end


end