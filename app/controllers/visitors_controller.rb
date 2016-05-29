class VisitorsController < ApplicationController
  def index
    @poll = Poll.last
    @vote = Vote.new
  end
end
