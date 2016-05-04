class QuestsCleanupJob < ActiveJob::Base
  queue_as :low_priority

  def perform(*args)
    # Do something later
  end
end
