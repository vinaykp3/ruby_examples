require 'minitest/autorun'
require 'date'

class TestData < Minitest::Test
  class Data
    def initialize(imap)
      @imap = imap
    end
    
    def purge(date)
      formatted_date = date.strftime('%d-%b-%Y')
      
      @imap.authenticate('LOGIN', 'user', 'password')
      @imap.select('INBOX')

      message_ids = @imap.search(["BEFORE #{formatted_date}"])
      @imap.store(message_ids, "+FLAGS", [:Deleted])
    end
  end
  
  def test_data
    date = Date.new(2010,1,1)
    formatted_date = '01-Jan-2010'
    ids = [4,5,6]
    
    mock = Minitest::Mock.new
    
    # mock expects:
    #            method      return  arguments
    #-------------------------------------------------------------
    mock.expect(:authenticate,  nil, ['LOGIN', 'user', 'password'])
    mock.expect(:select,        nil, ['INBOX'])
    mock.expect(:search,        ids, [["BEFORE #{formatted_date}"]])
    mock.expect(:store,         nil, [ids, "+FLAGS", [:Deleted]])
    
    mp = Data.new(mock)
    mp.purge(date)
    
    mock.verify
    
    mock.verify
  end
  
end
