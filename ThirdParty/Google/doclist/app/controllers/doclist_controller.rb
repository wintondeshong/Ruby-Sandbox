class DoclistController < ApplicationController

  layout 'standard'
  before_filter :setup_client, :set_user_email
  
  def all
    @test = 'blah'
  end

  def spreadsheets
    @doc_type = SPREADSHEET_DOC_TYPE
    get_documents_for(:category => [@doc_type, MINE_LABEL])
  end
  
end
