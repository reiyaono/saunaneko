# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  methods = %i[get post delete]
  credentials_paths = %w[]

  allow do
    origins '*'
    regexp_str = '/api/v1/(?!' + credentials_paths.join('|') + ')'
    resource Regexp.new(regexp_str), headers: :any, methods: methods
  end

  allow do
    if Rails.env.production?
      origins Settings.base_url
    else
      origins Regexp.new('(^https://HRE_COMES_URI$)' \
                         + '|(^http://localhost(:[0-9]{1,5})?$)')
    end

    regexp_str = '^/api/v1/(' + credentials_paths.join('|') + ')'
    resource Regexp.new(regexp_str), headers: :any, methods: methods, credentials: true
  end
end
