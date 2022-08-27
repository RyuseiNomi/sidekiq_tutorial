class HomesController < ApplicationController
  
  include RenderConcern

  def hello
    SampleEventWorker.perform_async
    show
  end
end
