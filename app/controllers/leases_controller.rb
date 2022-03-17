class LeasesController < ApplicationController
    
    def create
        lease = Lease.create!(rent: params[:rent], tenant_id: params[:tenant_id], apartment_id: params[:apartment_id])
        render json: lease, status: :created
    end

    def destroy
        Lease.find(params[:id]).destroy
        render json: {}
    end

end
