# frozen_string_literal: true

require 'json'
require 'faraday'

# Fetch data from the OpenNotify API service at
# http://api.open-notify.org/
#
# To allow this to work without internet access, the read data method just
# loads and parses the data
module OpenNotify
  BASE_DIR = __dir__

  def iss_now
    fetch_data(api: 'iss-now')
  end

  def astros
    fetch_data(api: 'astros')
  end

  # This method would really fetch data from the live API, but for our
  # purposes, a static file makes sense.
  def fetch_data(api:)
    if ENV['USE_LIVE_DATA'] == 'yes'
      conn = Faraday.new('http://api.open-notify.org/') do |f|
        f.response :json
      end

      conn.get("#{api}.json").body
    else
      filepath = File.join(BASE_DIR, 'data', "#{api}.json")
      JSON.parse(File.read(filepath))
    end
  end

  module_function :iss_now, :astros, :fetch_data
end
