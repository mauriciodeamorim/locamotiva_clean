class AtletasController < ApplicationController
  # GET /atletas
  # GET /atletas.xml
  def index
    @atletas = Atleta.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @atletas }
    end
  end

  # GET /atletas/1
  # GET /atletas/1.xml
  def show
    @atleta = Atleta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @atleta }
    end
  end

  # GET /atletas/new
  # GET /atletas/new.xml
  def new
    @atleta = Atleta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @atleta }
    end
  end

  # GET /atletas/1/edit
  def edit
    @atleta = Atleta.find(params[:id])
  end

  # POST /atletas
  # POST /atletas.xml
  def create
    @atleta = Atleta.new(params[:atleta])

    respond_to do |format|
      if @atleta.save
        flash[:notice] = 'Atleta was successfully created.'
        format.html { redirect_to(@atleta) }
        format.xml  { render :xml => @atleta, :status => :created, :location => @atleta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @atleta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /atletas/1
  # PUT /atletas/1.xml
  def update
    @atleta = Atleta.find(params[:id])

    respond_to do |format|
      if @atleta.update_attributes(params[:atleta])
        flash[:notice] = 'Atleta was successfully updated.'
        format.html { redirect_to(@atleta) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @atleta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /atletas/1
  # DELETE /atletas/1.xml
  def destroy
    @atleta = Atleta.find(params[:id])
    @atleta.destroy

    respond_to do |format|
      format.html { redirect_to(atletas_url) }
      format.xml  { head :ok }
    end
  end
end
