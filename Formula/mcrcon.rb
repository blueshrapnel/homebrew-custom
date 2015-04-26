class Mcrcon < Formula
  homepage "https://github.com/Tiiffi/mcrcon"
  url "https://github.com/Tiiffi/mcrcon/archive/d2a9565dfbd1599a3cd6df45b146abdc8e625970.zip"
  sha256 "d1b79fdfbc029f04dcd2f5c4f481daeae5533be38eb195a6b2bf83d2cd84eea2"

  def install
    system "gcc -std=gnu11 -pedantic -Wall -Wextra -O2 -s -o mcrcon mcrcon.c"

    bin.install "mcrcon"
  end

  test do
    system "#{bin}/mcrcon"
  end
end
