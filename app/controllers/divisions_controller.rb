class DivisionsController < ApplicationController
    def index
        @divisions=Division.all
    end
    
    def show
        get_division
    end

    # create new division
    def new
        @division=Division.new
    end
    # get division to edit using id
    def edit
        get_division
    end

    # create new division
    def create
        @division=Division.new(get_params)
        if @division.save
            flash[:notice]="Saved Successfully"
            redirect_to divisions_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    # delete division
    def destroy
        get_division
        if @division.destroy
            flash[:notice]="Deleted Successully."
            redirect_to divisions_path
        end
    end

    # update division
    def update
        get_division
        if @division.update(get_params)
            flash[:notice]="Updated Successfuly"
            redirect_to divisions_path
        else
            render :edit, status: :unprocessable_entity
        end

    end

    private
    def get_params
        params.require(:division).permit(:name)
    end
    
    def get_division
        @division=Division.find(params[:id])
    end
end
