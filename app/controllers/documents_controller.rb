class DocumentsController < ApplicationController
  def new
    @document = Document.new 
  end

  def create
    @document = Document.create(document_params)
  end 
end 

def document_params
  params.require(:document).permit(:document_name) 
end 