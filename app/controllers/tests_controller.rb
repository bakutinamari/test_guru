class TestsController < ApplicationController
  before_action :set_test, only: %i[show  start edit update destroy]
  before_action :set_user, only: %i[user]
  def show;end

  def new
    @test = Test.new
  end

  def index 
    @tests = Test.all
  end

  def edit 
  end 

  def update 
    if @test.update(test_params)
      redirect_to @test 
    else 
      render :edit 
    end
  end

  def create
    @test = Test.create(test_params)

    if @test.save
      redirect_to @test
    else
      render :new
    end
  end

  def start
    @user.tests.push(@test)
    redirect_to @user.test_passage(@test)
  end

  def destroy
    @test.destroy

    redirect_to test_path
  end

  private

  def test_params
    params.require(:test).permit(:title, :level, :category_id)
  end

  def set_test
    @test = Test.find(params[:id])
  end

  def set_user
    @user = User.first
  end
end
