require "formula"

class Eventstore < Formula
  homepage "http://geteventstore.com"
  url "http://download.geteventstore.com/binaries/EventStore-OSS-Mac-v3.0.1.tar.gz"
  sha1 "9a3f38cfb4569daae60165b7534add99f30f469e"

  depends_on :macos => :mavericks

  def install
    prefix.install Dir["*"]

    (bin/"eventstore").write <<-EOS.undent
      #!/bin/sh
      cd "#{prefix}"
      exec "#{prefix}/clusternode" "$@"
      EOS

    (bin/"eventstore-testclient").write <<-EOS.undent
      #!/bin/sh
      exec "#{prefix}/testclient" "$@"
      EOS
  end

  test do
    system "#{bin}/eventstore", "--version"
    system "#{bin}/eventstore --mem-db & sleep 3; pid=$!; #{bin}/eventstore-testclient --command wrfl; #{bin}/eventstore-testclient --command rdfl; kill $pid"
  end
end
