class Blade < Formula
  desc "The Blade CLI is the easiest way for Liferay developers to create new Liferay modules."
  homepage "https://github.com/liferay/liferay-blade-cli"
  url "https://search.maven.org/remotecontent?filepath=com/liferay/blade/com.liferay.blade.cli/4.0.10/com.liferay.blade.cli-4.0.10.jar"
  sha256 "bfd869e625b51cb2ad2f6a79602ca777dfaba29afefa2128fb5a32bc41dd7bb8"

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
