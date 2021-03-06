require 'twitter_scanner'

class TwitterWorker
  include Sidekiq::Worker
  sidekiq_options :retry => false

  def perform(search_terms)
    TwitterScanner.scan(search_terms)
  end
end
