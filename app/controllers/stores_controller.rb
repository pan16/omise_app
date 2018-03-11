class StoresController < ApplicationController

	def index
    end
    
    def create
        @store = Store.new(store_params)
        if @store.save
            flash[:success] = "登録したよ"
            redirect_to store_url(id: @store.id)
        else
            render 'new'
        end
    end
    
    def new
        @store = Store.new
    end
    
    def edit
        @store = Store.find(params[:id])
    end
    
    def show
        @store = Store.find(params[:id])
    end
    
    def update
        @store = Store.find(params[:id])
        @store.update_attributes(store_params)
        binding.pry
        store_id = SecureRandom.hex(8)
        @storeinfo = StoreInfomation.new(id: @store.id, point_url: store_id)
        @storeinfo.save
        redirect_to @store
    end
    
    def destroy
    end
    
    def store_params
        params.require(:store).permit(:email, :password, :password_confirmation)
    end

end
