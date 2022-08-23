class SampleEventWorker
  include Sidekiq::Worker
  sidekiq_options queue: :event

  # 引数同士を加算して logger に出力する
  #
  # @param [Integer] a
  # @param [Integer] b
  def perform(a, b)
    result = a + b
    logger.info("task execution completed! : #{result}")
  end
end
