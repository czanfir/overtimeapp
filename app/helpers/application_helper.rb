module ApplicationHelper
  def active?(path)
    "active" if current_page?(path)
  end

  def admin_user?
    current_user.type == 'AdminUser'
  end
end
