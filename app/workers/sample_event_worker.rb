class SampleEventWorker
  include Sidekiq::Worker
  sidekiq_options queue: :event

  def perform
    puts 'hello world'
  end
end
