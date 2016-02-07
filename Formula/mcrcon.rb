class Mcrcon < Formula
  homepage "https://github.com/Tiiffi/mcrcon"
  url "https://github.com/Tiiffi/mcrcon/archive/d2a9565dfbd1599a3cd6df45b146abdc8e625970.zip"
  sha256 "e23e90a1bad26e212755c1961c1fb1b0974156cdf8135903f36f9c2e3ef5fae9"

  def install
    system "gcc -std=gnu11 -pedantic -Wall -Wextra -O2 -s -o mcrcon mcrcon.c"

    bin.install "mcrcon"
  end

  test do
    system "#{bin}/mcrcon"
  end
end
