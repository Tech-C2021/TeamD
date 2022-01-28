class UsersController < ActionController::Base
    def index
        @users = User.all
    end


    def show
        #@を付けないと変数がviewに渡せない
        @user = User.find(params["id"])
    end
end