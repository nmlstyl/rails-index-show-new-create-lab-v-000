class CouponsController < ActionController::Base

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find_by(id: params[:id])
  end

  def new
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupon_path(@coupon)
  end

end
