class GaugesController < ApplicationController
  def new
  end

  def show
    ##@gauge = Gauge.find(:all, conditions: {size: params[:example1]}, order: ":div, :serial")
    @gauge = Gauge.all
  end
end
