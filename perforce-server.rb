require "formula"

class PerforceServer < Formula
  homepage "http://www.perforce.com/"
  version "2014.2.978861"

  if MacOS.prefer_64_bit?
    url "http://filehost.perforce.com/perforce/r14.2/bin.darwin90x86_64/p4d"
    sha256 "e8700057b05e15f69f5892ee4136b4ae3ea4ab86a06f3f739c8c5562d90ea10f"
  else
    url "http://filehost.perforce.com/perforce/r14.2/bin.darwin90x86/p4d"
    sha256 "be2228b6b98acaba07a28a17ad21f3bdd6c9943f4b110b20ab5415021d0c54ee"
  end

  def install
    bin.install "p4d"
    (var+"p4root").mkpath
  end

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{opt_bin}/p4d</string>
        <string>-p</string>
        <string>1666</string>
        <string>-r</string>
        <string>#{var}/p4root</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
      <key>KeepAlive</key>
      <true/>
      <key>WorkingDirectory</key>
      <string>#{var}/p4root</string>
      <key>StandardErrorPath</key>
      <string>#{var}/log/p4d.log</string>
      <key>StandardOutPath</key>
      <string>#{var}/log/p4d.log</string>
    </dict>
    </plist>
    EOS
  end
end
