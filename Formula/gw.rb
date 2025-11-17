class Gw < Formula
  desc "This project allows you to always call your gradle wrapper if it detects it"
  homepage "https://github.com/david-truong/gw"
  url "https://github.com/david-truong/gw/archive/v1.0.7.tar.gz"
  sha256 "0790bc60c7a6a35d9d01d4360accad49851ac4b450afbdf8595633b8093bff38"

  depends_on "openjdk@11"

  def install
    ENV["GRADLE_USER_HOME"] = buildpath/".brew_home"
    system "./gradlew", "build"
  	bin.install "build/graal/gw"
  end
end
