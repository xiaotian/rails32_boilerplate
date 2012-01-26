class FooBarsController < ApplicationController
  # GET /foo_bars
  # GET /foo_bars.json
  def index
    @foo_bars = FooBar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @foo_bars }
    end
  end

  # GET /foo_bars/1
  # GET /foo_bars/1.json
  def show
    @foo_bar = FooBar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @foo_bar }
    end
  end

  # GET /foo_bars/new
  # GET /foo_bars/new.json
  def new
    @foo_bar = FooBar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @foo_bar }
    end
  end

  # GET /foo_bars/1/edit
  def edit
    @foo_bar = FooBar.find(params[:id])
  end

  # POST /foo_bars
  # POST /foo_bars.json
  def create
    @foo_bar = FooBar.new(params[:foo_bar])

    respond_to do |format|
      if @foo_bar.save
        format.html { redirect_to @foo_bar, notice: 'Foo bar was successfully created.' }
        format.json { render json: @foo_bar, status: :created, location: @foo_bar }
      else
        format.html { render action: "new" }
        format.json { render json: @foo_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /foo_bars/1
  # PUT /foo_bars/1.json
  def update
    @foo_bar = FooBar.find(params[:id])

    respond_to do |format|
      if @foo_bar.update_attributes(params[:foo_bar])
        format.html { redirect_to @foo_bar, notice: 'Foo bar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @foo_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo_bars/1
  # DELETE /foo_bars/1.json
  def destroy
    @foo_bar = FooBar.find(params[:id])
    @foo_bar.destroy

    respond_to do |format|
      format.html { redirect_to foo_bars_url }
      format.json { head :no_content }
    end
  end
end
