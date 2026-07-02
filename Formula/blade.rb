class Blade < Formula
  desc "The Blade CLI is the easiest way for Liferay developers to create new Liferay modules."
  homepage "https://github.com/liferay/liferay-blade-cli"
  url "https://repository-cdn.liferay.com/nexus/content/repositories/liferay-public-releases/com/liferay/blade/com.liferay.blade.cli/8.0.2/com.liferay.blade.cli-8.0.2.jar"
  sha256 "9d685cf870ce6e2f16d076732927ba3c61cba503913b219c56ba1fffb51f7c92"

  depends_on "openjdk@11"

  def install
    File.open('blade', 'w') do |f|
    # use "\n" for two lines of text
      f.puts "#!/bin/bash"
      f.puts "java -jar #{prefix}/com.liferay.blade.cli.jar \"$@\""
    end

  	prefix.install "com.liferay.blade.cli-#{version}.jar" => "com.liferay.blade.cli.jar"
  	bin.install "blade"
  end
end
