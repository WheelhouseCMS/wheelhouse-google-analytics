Google Analytics Plugin for Wheelhouse CMS
==========================================

This gem allows the Google Analytics tracking code to be easily added to your theme templates.

It has a number of benefits over statically adding the tracking code directly in your theme layout:

- The tracking code can be easily changed by an Administrator within the Site Options
- The tracking code is only added in production mode
- The tracking code is not added when previewing pages in the admin

Installation & Usage
--------------------

**1. Add `wheelhouse-google-analytics` to your Gemfile:**

    gem "wheelhouse-google-analytics"

Then run `bundle install`.

**2. Include the helper in your layout, just before the closing `</body>` tag:**

      <%= google_analytics %>
    </body>

**3. Set the tracking code within _Configuration_ -> _Site Options_.**
