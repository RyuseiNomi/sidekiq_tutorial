require 'rails_helper'
require 'sidekiq/testing'

RSpec.describe SampleEventWorker do

  before do
    Sidekiq::Worker.clear_all
    allow(Rails.logger).to receive(:info)
  end

  context ' 2 つの引数を受け取った場合' do
    it '足し算をしてログに出力すること' do
      SampleEventWorker.perform_async(1, 1)

      SampleEventWorker.drain

      expect_result = 2
      expect(Rails.logger).to have_received(:info).with("result: #{expect_result}")
    end
  end
end
