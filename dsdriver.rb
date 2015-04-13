class Dsdriver < Formula
  homepage "http://www-01.ibm.com/support/knowledgecenter/SS6NHC/com.ibm.swg.im.dashdb.doc/connecting/connect_driver_package.html"
  url "http://bd81.http.dal05.cdn.softlayer.net/public/dsdriver/dsdriver-10.5fp5_33751.tar.gz"
  version "10.5.0.5.33751"
  sha256 "aaa5ee3e8c26c3393e450a9f3214b6fa332db2dea6da3eb1cf68df6a4da2273c"

  def install
    if File.directory?("/Applications/dsdriver")
      puts "You already have dsdriver installed on /Applications/dsdriver."
      puts "Please, remove this folder and try again."
    else
      puts "Installing... "
      system "./installDSDriver", prefix

      # create util folder for install validation scripts
      mkdir_p prefix/"util"

      mv bin/"validate_install.php", prefix/"util/validate_install.php"
      mv bin/"validate_install.py",  prefix/"util/validate_install.py"
      mv bin/"validate_install.rb",  prefix/"util/validate_install.rb"

      # remove app file
      rm_rf bin/"CLPPlus.app"
    end
  end

  test do
    puts "If the installation worked you should be able to open the application CLPPlus under /Applications"
    system "true"
  end
end
