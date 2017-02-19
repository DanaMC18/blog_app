# require 'redcarpet'
# require 'pry'

class Api::TopicsController < ApplicationController
  before_action :find_topic, only : [:edit, :update, :show, :delete]

  # Renders all Topics
  def index 
    @topics = Topic.all
  end

  # Renders individual Topic
  def show
  end

  # Render form to create new Topic
  def new
    @Topic = Topic.new
  end

  # Create/Save new Topic
  def create
    @Topic = Topic.new 
    if @topic.save(topic_params)
      flash[:notice] = "Topic created!"
      redirect_to topic_path(@topic)
    else
      flash[:alert] = "Error creating new Topic"
      render :new
    end
  end

  # Render form to edit existing Topic
  def edit
  end

  # Save updated Topic
  def update
    if @topic.update_attribtes(topic_params)
      flash[:notice] = "Topic updated!"
      redirect to topic_path(@topics)
    else
      flash[:alert] = "Error updating Topic"
      render :edit
    end  
  end

  # Delete existing Topic
  def destroy
    if @topic.destroy
      flash[:notice] = "Topic deleted!"
      redirect_to topics_path
    else
      flash[:alert] = "Error deleting Topic"
    end
  end

  private

  def topic_params
    params.require(:topic).permit(:title, :content)
  end

  def find_topic
    @topic = Topic.find(params[:id])
  end

end