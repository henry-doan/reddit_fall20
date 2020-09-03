class SubsController < ApplicationController
  # skinny controller fat models
  # Create  -> Post
  # Read    -> Get
  # Update  -> Put
  # Destroy -> Delete
  # actions are items you can do for a controller
  # all action must HTML, JSON, XMl, redirect to a action that does.

  # Read / Get
  # index shows all all of the items
  # def index
  #   @model_names = Model_name.all
  # end

  # Read / Get
  # show, shows a single item, needs an id 
  # def show
  #   @model_name = Model_name.find(params[:id])
  # end

  # Read / Get
  # new, take you to the new form, create a item in memory 
  # def new
  #   @model_name = Model_name.new
  # end

  # Read / Get
  # edit, takes you to the edit form, find the item you are editing
  # def edit
  #   @model_names = Model_name.find(params[:id])
  # end

  # Create / POST 
  # create and item that is in memory and then put it in the db
  # def create
  #   @model_name = Model_name.new(model_name_params)
  #   if @model_name.save
  #     go somewhere
  #   else
  #     render :new
  #   end
  # end

  # private 
  #   def model_name_params
  #     params.require(:model_name).permit(:attr, :everything the table has)
  #   end

  # Update / Put Patch
  # update the item from the form, update in the db 
  # def update 
  #   @model_name = Model_name.find(params[:id])
  #   if @model_name.update(model_name_params)
  #     go somewhere
  #   else
  #     render :edit
  #   end
  # end

  # Destroy / Delete
  # delete the record from the db
  # def destroy
  #   @model_name = Model_name.find(params[:id])
  #   @model_name.destroy
  #   send somewhere
  #   or 
  #   Model_name.find(params[:id]).destroy
  #   send somewhere
  # end

  # callbacks 
  # run logic at a certain point 
  # have the same code in one place 
  # before_action 
  # after_action 
  # only except

  def index
    @subs = Sub.all
    # render index.html.erb
  end

  def show
    @sub = Sub.find(params[:id]) 
  end

  def new
    @sub = Sub.new
  end

  def create
    @sub = Sub.new(sub_params)
    if @sub.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @sub = Sub.find(params[:id])
  end

  def update
    @sub = Sub.find(params[:id])
    if @sub.update(sub_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @sub = Sub.find(params[:id])
    @sub.destroy
    redirect_to root_path

    # or
    # Sub.find(params[:id]).destroy
    # redirect_to root_path
  end

  private 
    def sub_params
      params.require(:sub).permit(:name)
    end
end
