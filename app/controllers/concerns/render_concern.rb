module RenderConcern
  extend ActiveSupport::Concern

  def show
    render :hello, status: 200
  end
end
