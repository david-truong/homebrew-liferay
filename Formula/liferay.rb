class Liferay < Formula
  desc "CLI for Liferay portal development workflows"
  homepage "https://github.com/david-truong/liferay-portal-cli"
  head "https://github.com/david-truong/liferay-portal-cli.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=HEAD"), "."
  end

  test do
    assert_match "liferay version", shell_output("#{bin}/liferay --version")
  end
end
