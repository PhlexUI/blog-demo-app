class StaticController < ApplicationController
  def index
    render Static::IndexView
  end
end
