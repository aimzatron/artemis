class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_filter :set_tracking_cookie
  def set_tracking_cookie
    cookies.permanent[:user_uuid] = SecureRandom.uuid unless cookies[:user_uuid]
  end

  def set_user_status
    cookies.permanent[:status] = status_choice unless cookies[:status]
  end

  def set_user_orientation
    cookies.permanent[:orientation] = orientation unless cookies[:orientation]
  end

  def set_sexual_activity_level
    cookies.permanent[:sexual_activity] = sexual_activity unless cookies[:sexual_activity]
  end

  def status_choice
    "pregnant"
  end

  def orientation
    "straight"
  end

  def sexual_activity
    "sexually active with steady/single partner(s)"
  end

  protect_from_forgery with: :exception
end
