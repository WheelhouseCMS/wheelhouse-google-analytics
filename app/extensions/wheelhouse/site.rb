Wheelhouse::Site.class_eval do
  property :google_analytics_code, String
  validates_format_of :google_analytics_code, :with => /\AUA-\d{4,9}-\d{1,4}\Z/i, :allow_blank => true
end
