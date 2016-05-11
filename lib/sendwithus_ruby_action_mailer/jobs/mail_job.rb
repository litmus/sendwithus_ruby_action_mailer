require "active_job"

module SendWithUsMailer
  module Jobs
    class MailJob < ActiveJob::Base
      queue_as :default

      def perform(*args)
        SendWithUs::Api.new.send_email(args)
      end
    end
  end
end