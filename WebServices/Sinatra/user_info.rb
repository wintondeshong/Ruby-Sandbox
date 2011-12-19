get '/user/:id' do |id|
  content_type 'text/xml'
<<-EOP


          #{id}


EOP
end
