require 'formula'

class Sleepnow < Formula
  url 'http://www.snoize.com/SleepNow/SleepNow.tar.gz'
  version '20070603' # Jun  3  2007 source
  homepage 'http://www.snoize.com/SleepNow/'
  md5 'a9555e48d9719868dd9ec7ce1423861b'

  def install
    # Build binary
    system ENV['CC'], "-framework", "IOKit", "-o", "sleepnow", "Source/main.c"

    # Install binary
    bin.install 'sleepnow'
  end
end
