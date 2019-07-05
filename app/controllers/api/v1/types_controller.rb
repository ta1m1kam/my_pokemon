# frozen_string_literal: true

module Api::V1
  class TypesController < ApplicationController
    def index
      types = Type.all
      render json: { status: :ok, data: types }
    end
  end
end
