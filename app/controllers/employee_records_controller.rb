class EmployeeRecordsController < ApplicationController
  # GET /employee_records
  # GET /employee_records.json
  def index
    @employee_records = EmployeeRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employee_records }
    end
  end

  # GET /employee_records/1
  # GET /employee_records/1.json
  def show
    @employee_record = EmployeeRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee_record }
    end
  end

  # GET /employee_records/new
  # GET /employee_records/new.json
  def new
    @employee_record = EmployeeRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employee_record }
    end
  end

  # GET /employee_records/1/edit
  def edit
    @employee_record = EmployeeRecord.find(params[:id])
  end

  # POST /employee_records
  # POST /employee_records.json
  def create
    @employee_record = EmployeeRecord.new(params[:employee_record])

    respond_to do |format|
      if @employee_record.save
        format.html { redirect_to @employee_record, notice: 'Employee record was successfully created.' }
        format.json { render json: @employee_record, status: :created, location: @employee_record }
      else
        format.html { render action: "new" }
        format.json { render json: @employee_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employee_records/1
  # PUT /employee_records/1.json
  def update
    @employee_record = EmployeeRecord.find(params[:id])

    respond_to do |format|
      if @employee_record.update_attributes(params[:employee_record])
        format.html { redirect_to @employee_record, notice: 'Employee record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employee_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_records/1
  # DELETE /employee_records/1.json
  def destroy
    @employee_record = EmployeeRecord.find(params[:id])
    @employee_record.destroy

    respond_to do |format|
      format.html { redirect_to employee_records_url }
      format.json { head :no_content }
    end
  end
end
