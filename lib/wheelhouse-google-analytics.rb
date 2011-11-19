require 'wheelhouse'

module GoogleAnalytics
  class Plugin < Wheelhouse::Plugin
    hook(:"site-options.primary", "google_analytics/site_options")
  end
end
