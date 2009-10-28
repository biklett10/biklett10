# lib/bikle_lib.rb
def ws2f(s,f)
  fhw = File.open(f,'w')
  fhw.write(s)
  fhw.close
end
