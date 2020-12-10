class Gw < Formula
  desc "This project allows you to always call your gradle wrapper if it detects it"
  homepage "https://github.com/david-truong/gw"
  url "https://github.com/david-truong/gw/archive/v1.0.4.tar.gz"
  sha256 "54cf18319271b02e7c9cf47aa71e9b74b218c9978ec98c5fe5a67cc1bc4bdaa9"

  depends_on "openjdk@8"

  def install
    ENV["GRADLE_USER_HOME"] = buildpath/".brew_home"
    system "./gradlew", "build"
    inreplace "brew/gw", "##PREFIX##", "#{prefix}"
  	prefix.install "build/graal/gw"
  	bin.install "brew/gw"
  end
end
