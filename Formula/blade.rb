class Blade < Formula
  desc "The Blade CLI is the easiest way for Liferay developers to create new Liferay modules."
  homepage "https://github.com/liferay/liferay-blade-cli"
  url "https://releases.liferay.com/tools/blade-cli/3.2.0.201810082311/blade.jar"
  sha256 "47a38378b93ca0c6e7751842fb70111bbffb750be9e7a3ebe42b7906f8d9b6ff"

  depends_on "openjdk@11"

  def install
    File.open('blade', 'w') do |f|
    # use "\n" for two lines of text
      f.puts "#!/bin/bash"
      f.puts "java -jar blade.jar \"$@\""
    end

  	bin.install "blade"
  end
end
