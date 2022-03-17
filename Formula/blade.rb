class Blade < Formula
  desc "The Blade CLI is the easiest way for Liferay developers to create new Liferay modules."
  homepage "https://github.com/liferay/liferay-blade-cli"
  url "https://releases.liferay.com/tools/blade-cli/2.0.2.201702020520/plugins/com.liferay.blade.cli_2.0.2.201702020520.jar"
  sha256 "b902e82ea4fbff41715e49d6a5e2adf35c05b7f0d59ae8904a57a322a44728ed"

  depends_on "openjdk"

  def install
    File.open('blade', 'w') do |f|
    # use "\n" for two lines of text
      f.puts "#!/bin/bash"
      f.puts "java -jar #{prefix}/com.liferay.blade.cli.jar \"$@\""
    end

  	prefix.install "com.liferay.blade.cli_#{version}.jar" => "com.liferay.blade.cli.jar"
  	bin.install "blade"
  end
end
