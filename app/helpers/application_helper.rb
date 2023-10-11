module ApplicationHelper
  def page_title
    title = [t("#{controller_name}.#{action_name}.title", default: nil), t("service.name")].compact.join(" - ")
    content_tag :title, title
  end
end
