module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end
  
  def log_in(driver)
    session[:driver_id] = driver.id
  end
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def current_driver
    @current_driver ||= Driver.find_by(id: session[:driver_id])
  end
  
  def logged_in?
    !current_user.nil?
    !current_driver.nil?
  end
  
  def log_out
    session.delete(:user_id)
    session.delete(:driver_id)
    @current_user = nil
    @current_driver = nil
  end
end
