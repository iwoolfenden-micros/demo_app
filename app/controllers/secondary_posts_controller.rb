class SecondaryPostsController < ApplicationController
  # GET /secondary_posts
  # GET /secondary_posts.json
  def index
    @secondary_posts = SecondaryPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @secondary_posts }
    end
  end

  # GET /secondary_posts/1
  # GET /secondary_posts/1.json
  def show
    @secondary_post = SecondaryPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @secondary_post }
    end
  end

  # GET /secondary_posts/new
  # GET /secondary_posts/new.json
  def new
    @secondary_post = SecondaryPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @secondary_post }
    end
  end

  # GET /secondary_posts/1/edit
  def edit
    @secondary_post = SecondaryPost.find(params[:id])
  end

  # POST /secondary_posts
  # POST /secondary_posts.json
  def create
    @secondary_post = SecondaryPost.new(params[:secondary_post])

    respond_to do |format|
      if @secondary_post.save
        format.html { redirect_to @secondary_post, notice: 'Secondary post was successfully created.' }
        format.json { render json: @secondary_post, status: :created, location: @secondary_post }
      else
        format.html { render action: "new" }
        format.json { render json: @secondary_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /secondary_posts/1
  # PUT /secondary_posts/1.json
  def update
    @secondary_post = SecondaryPost.find(params[:id])

    respond_to do |format|
      if @secondary_post.update_attributes(params[:secondary_post])
        format.html { redirect_to @secondary_post, notice: 'Secondary post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @secondary_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secondary_posts/1
  # DELETE /secondary_posts/1.json
  def destroy
    @secondary_post = SecondaryPost.find(params[:id])
    @secondary_post.destroy

    respond_to do |format|
      format.html { redirect_to secondary_posts_url }
      format.json { head :no_content }
    end
  end
end
