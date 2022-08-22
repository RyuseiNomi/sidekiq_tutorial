class HomesController < ApplicationController
  def hello
    SampleEventWorker.perform_async
    render :hello
  end
end
