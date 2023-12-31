class PlansController < ApplicationController
  
    def index
      @plans = Plan.all
    end
  
    def new
      @plan = Plan.new
    end
  
    def create
      @plan = Plan.new(params.require(:plan).permit(:title, :start_date, :end_date, :is_all_day, :sche_memo))
      if @plan.save
        flash[:notice] = "スケジュールを新規追加しました"
         redirect_to :plans
        else
          render "new"
        end
      end
   
  
    def show
      @plan = Plan.find(params[:id])
    end
  
    def edit
      @plan = Plan.find(params[:id])
    end
  
    def update
      @plan = Plan.find(params[:id])
      if @plan.update(params.require(:plan).permit(:title, :start_date, :end_date, :is_all_day, :sche_memo))
          flash[:notice] = "ユーザーIDが「#{@plan.id}」の情報を更新しました"
           redirect_to :plans
        else
           render "edit"
        end
    end
  
    def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    flash[:notice] = "削除しました"
    redirect_to :plans
    end
    
    private
    def plan_params
      params.require(:plan).permit(:title, :start_date, :end_date, :is_all_day, :sche_memo)
    end
  end
  