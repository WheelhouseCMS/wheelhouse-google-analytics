module GoogleAnalytics::AnalyticsHelper
  def google_analytics
    render "google_analytics/tracking_code" if render_google_analytics?
  end
  
  def render_google_analytics?
    Rails.env.production? && site.google_analytics_code? && !request.env['wheelhouse.preview']
  end
end
