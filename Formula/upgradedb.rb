class Upgradedb < Formula
  desc "upgrade your liferay database"
  homepage "https://github.com/liferay/liferay-portal"
  url "https://repository.liferay.com/nexus/service/local/repositories/liferay-public-releases/content/com/liferay/com.liferay.portal.tools.db.upgrade.client/1.0.1/com.liferay.portal.tools.db.upgrade.client-1.0.1.zip"
  sha256 "1f36a92c79d9a95d98b9ad9bbfcb410bb39cd4688f919a15fa20c5f4aa1ec44b"

  depends_on :java => "1.7+"

  def install
    lib.install "lib/com.liferay.portal.tools.db.upgrade.client-#{version}.jar"
    bin.install "bin/portal-tools-db-upgrade-client" => "upgradedb"
  end
end
