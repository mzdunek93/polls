class VotesController < ApplicationController
  def create
    poll = Poll.find(params[:poll][:id])
    if Vote.find_by(ip: request.remote_ip)
      flash[:alert] = "Nie możesz głosować dwukrotnie."
      redirect_to poll_url(poll)
    end
    if params[:Vote][:choice].blank?
      flash[:alert] = "Nie wybrałeś żadnej opcji."
      redirect_to root_path
    else
      if params[:Vote][:choice] == "1"
        poll.yes += 1
      else
        poll.no += 1
      end
      poll.save
    end
    vote = Vote.new(ip: request.remote_ip, poll: poll)
    vote.save
    redirect_to poll_url(poll)
  end
end
