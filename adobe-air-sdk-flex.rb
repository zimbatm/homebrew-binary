# Find downloads at: https://helpx.adobe.com/air/kb/archived-air-sdk-version.html
class AdobeAirSdkFlex < Formula
  homepage "https://www.adobe.com/devnet/air/air-sdk-download.html"
  url "http://airdownload.adobe.com/air/mac/download/17.0/AdobeAIRSDK.tbz2"
  sha1 "f27b1d9dd70aab2e7b25bb7187286ad1f893bd90"
  version "17.0.0.124"

  conflicts_with "adobe-air-sdk"

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/*"]
  end

  def caveats; <<-EOS.undent
    To set AIR_HOME:
      export AIR_HOME=#{libexec}
    EOS
  end

  test do
    system "#{bin}/fontswf", "-h"
  end
end
