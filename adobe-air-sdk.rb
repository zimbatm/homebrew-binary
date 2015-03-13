# Find downloads at: https://helpx.adobe.com/air/kb/archived-air-sdk-version.html
class AdobeAirSdk < Formula
  homepage "https://www.adobe.com/devnet/air/air-sdk-download.html"
  url "http://airdownload.adobe.com/air/mac/download/17.0/AIRSDK_Compiler.tbz2"
  sha1 "4f081a579cf0f15d13118a08ab5a502aa4c0d848"
  version "17.0.0.124"

  conflicts_with "adobe-air-sdk-flex"

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
