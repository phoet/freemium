class NotesController < ApplicationController
  def index
    render text: Resque.redis.get(Note::KEY) || 'key is empty'
  end
end
