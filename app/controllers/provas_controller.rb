class ProvasController < ApplicationController
  # GET /provas
  # GET /provas.xml
  def index
    @provas = Prova.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @provas }
    end
  end

  # GET /provas/1
  # GET /provas/1.xml
  def show
    @prova = Prova.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @prova }
    end
  end

  # GET /provas/new
  # GET /provas/new.xml
  def new
    @prova = Prova.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @prova }
    end
  end

  # GET /provas/1/edit
  def edit
    @prova = Prova.find(params[:id])
  end

  # POST /provas
  # POST /provas.xml
  def create
    @prova = Prova.new(params[:prova])

    respond_to do |format|
      if @prova.save
        flash[:notice] = 'Prova was successfully created.'
        format.html { redirect_to(@prova) }
        format.xml  { render :xml => @prova, :status => :created, :location => @prova }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @prova.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /provas/1
  # PUT /provas/1.xml
  def update
    @prova = Prova.find(params[:id])

    respond_to do |format|
      if @prova.update_attributes(params[:prova])
        flash[:notice] = 'Prova was successfully updated.'
        format.html { redirect_to(@prova) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @prova.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /provas/1
  # DELETE /provas/1.xml
  def destroy
    @prova = Prova.find(params[:id])
    @prova.destroy

    respond_to do |format|
      format.html { redirect_to(provas_url) }
      format.xml  { head :ok }
    end
  end
end
