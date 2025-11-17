class Blade < Formula
  desc "The Blade CLI is the easiest way for Liferay developers to create new Liferay modules."
  homepage "https://github.com/liferay/liferay-blade-cli"
  url "https://repo1.maven.org/maven2/com/liferay/blade/com.liferay.blade.cli/7.0.5/com.liferay.blade.cli-7.0.5.jar"
  sha256 "3f14205fe62a5380de1e6031c58fe1083acb275e98ebc4130173041fbc0538fc"

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
