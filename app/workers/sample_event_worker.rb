class SampleEventWorker
  include Sidekiq::Worker
  sidekiq_options queue: :event

  def perform(id)
    puts 'hello world'
  end
end
