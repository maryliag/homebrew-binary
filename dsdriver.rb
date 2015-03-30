require "formula"

class Dsdriver < Formula
  homepage "http://www-01.ibm.com/support/knowledgecenter/SS6NHC/com.ibm.swg.im.dashdb.doc/connecting/connect_driver_package.html"
  url "http://bd81.http.dal05.cdn.softlayer.net/public/dsdriver/dsdriver-10.5fp5_33751.tar.gz"
  version "10.5.0.5.33751"
  sha1 "b0aca23b10eb7bb51d0c677fd5ea1ed5ec8481e9"

  def install
  	if Dir.exists?('/Applications/dsdriver')
  		puts "You already have dsdriver installed on /Applications/dsdriver."
  		puts "Please, remove this folder and try again."
  	else
  		puts "Installing... "
    	system "./installDSDriver", prefix
    end
  end
end