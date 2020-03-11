class Gw < Formula
  desc "This project allows you to always call your gradle wrapper if it detects it"
  homepage "https://github.com/david-truong/gw"
  url "https://github.com/david-truong/gw/archive/v1.0.3.tar.gz"
  sha256 "e5a29590496d44f59767672e7b00e2cf5bb1df5ccd5bc6889218df363b0a8a33"

  depends_on :java => "1.7+"

  def install
    system "./gradlew", "build", "nativeImage"
    inreplace "brew/gw", "##PREFIX##", "#{prefix}"
  	prefix.install "build/graal/gw"
  	bin.install "brew/gw"
  end
end
