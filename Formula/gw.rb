class Gw < Formula
  desc "This project allows you to always call your gradle wrapper if it detects it"
  homepage "https://github.com/david-truong/gw"
  url "https://github.com/david-truong/gw/archive/v1.0.5.tar.gz"
  sha256 "0e4ee6f4066ca9218909f54d23e1484d876584439c37c9aa6b6c7f416793237d"

  depends_on "openjdk@8"

  def install
    ENV["GRADLE_USER_HOME"] = buildpath/".brew_home"
    system "./gradlew", "build"
  	bin.install "build/graal/gw"
  end
end
