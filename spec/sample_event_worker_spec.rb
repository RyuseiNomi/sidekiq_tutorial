require 'rails_helper'
require 'sidekiq/testing'

RSpec.describe SampleEventWorker do

  before do
    allow(Rails.logger).to receive(:info)
  end

  context '引数を 2 つ受け取った場合' do
    it '足し算をして logger に書き出すこと' do
      SampleEventWorker.perform_async(1, 1)

      SampleEventWorker.drain

      # logger が info を受け取ること
      expect(Rails.logger).to have_received(:info)
    end
  end
end
