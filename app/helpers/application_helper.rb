module ApplicationHelper
  def active_class?(current_path)
    class_name = request.path == current_path ? 'nav-item nav-link active' : 'nav-item nav-link'
  end
end
