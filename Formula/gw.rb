class Gw < Formula
  desc "This project allows you to always call your gradle wrapper if it detects it"
  homepage "https://github.com/david-truong/gw"
  url "https://github.com/david-truong/gw/archive/v1.0.6.tar.gz"
  sha256 "1fdeb6a3fcd94b93a47a32620361f756ca4d049b61d55b65bb45583ca04ee8df"

  depends_on "openjdk"

  def install
    ENV["GRADLE_USER_HOME"] = buildpath/".brew_home"
    system "./gradlew", "build"
  	bin.install "build/graal/gw"
  end
end
