require 'faraday'



module Saddle
  module Middleware

    # Public: Adds the content of `extra_env` into the env variable

    class ExtraEnv < Faraday::Middleware
      def call(env)
        if env[:saddle][:client_options][:extra_env]
          env.merge!(env[:saddle][:client_options][:extra_env])
        end

        @app.call env
      end
    end

  end
end
