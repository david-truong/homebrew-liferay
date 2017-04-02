class Gw < Formula
  desc "This project allows you to always call your gradle wrapper if it detects it"
  homepage "https://github.com/david-truong/gw"
  url "https://github.com/david-truong/gw/archive/v1.0.2.tar.gz"
  sha256 "7033091a6783fa351ca0e4a415500040627ec9a6ce31f353d7809786654af13c"

  def install
    system "./gradlew", "build"
    inreplace "brew/gw", "##PREFIX##", "#{prefix}"
  	prefix.install "build/libs/gw.jar"
  	bin.install "brew/gw"
  end
end
