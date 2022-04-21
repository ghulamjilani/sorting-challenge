module Sortable
  extend ActiveSupport::Concern

  included do
    scope :sort_data, ->(params) {
      params[:column] && params[:direction] ? order("#{params[:column]} #{params[:direction]}") : self
    }
  end
end