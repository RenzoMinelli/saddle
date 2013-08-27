# -*- encoding: utf-8 -*-

require '<%= project_name %>/endpoints/status'

# This allows us to stub out live calls when testing from calling projects

module <%= root_module %>
  module Stub

    # Setup stubbing for all endpoints
    def stub!
      <%= root_module %>::Endpoints::Status.any_instance.stub(:healthy?).and_return(
        Stub::Data::TEST_STATUS_HEALTHY_RESPONSE
      )
    end

    # Test data for stubs to return
    module Data

      TEST_STATUS_HEALTHY_RESPONSE = 'OK'.freeze

    end

  end
end
