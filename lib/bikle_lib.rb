# lib/bikle_lib.rb
module BikleLib

  def BikleLib.ws2f(s,f)
    fhw = File.open(f,'w')
    fhw.write(s)
    fhw.close
  end

  def BikleLib.saop
    # Ask webrat to render the HTML currently in response.body
    save_and_open_page()
  end

end

