module GoogleAnalytics::AnalyticsHelper
  TRACKING_CODE = <<-EOJS
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', '{{CODE}}']);
    _gaq.push(['_trackPageview']);

    (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
  EOJS
  
  def google_analytics
    if Rails.env.production? && site.google_analytics_code? && !controller.env['wheelhouse.preview']
      javascript_tag(TRACKING_CODE.sub("{{CODE}}", site.google_analytics_code))
    end
  end
end
