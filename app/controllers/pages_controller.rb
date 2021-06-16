class PagesController < ApplicationController
  def home
    render json: { version: 'v1.0.0'}
  end

  def up
    Redis.current.ping
    ActiveRecord::Base.connection.execute("SELECT 1")

    head :ok
  end
end
