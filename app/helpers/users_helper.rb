module UsersHelper
  def user_full_name
    user = current_user
    full_name = user.first_name
    full_name += " #{user.last_name}" if !user.last_name.empty?
    full_name
  end
end
