Refinery::PagesController.class_eval do
  skip_before_filter :find_page, :only => [:about_us]
  def about_us
    @page = ::Refinery::Page.where(:link_url => '/about-us').first || error_404
    @events = ::Refinery::Events::Event.all
    render_with_templates?
  end
end
