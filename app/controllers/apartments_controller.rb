class ApartmentsController < ApplicationController

    def index
        apartments = Apartment.all
        render json: apartments, status: :ok
    end

    def show
        apartment = Apartment.find(params[:id])
        render json: apartment, status: :found
    end

    def create
        apartment = Apartment.create!(params[:number])
        render json: apartment, status: :created
    end

    def update
        apartment = Apartment.find(params[:id])
        apartment.update(number: params[:number])
        render json: apartment, status: :ok
    end

    def destroy
        apartment = Apartment.find(params[:id])
        apartment.destroy
        head :no_content
    end

end
