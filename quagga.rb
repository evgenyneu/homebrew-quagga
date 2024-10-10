class Quagga < Formula
  desc "A command-line utility that combines multiple text files into a single prompt suitable for Large Language Models."
  homepage "https://github.com/evgenyneu/quagga"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/evgenyneu/quagga/releases/download/v#{version}/quagga-macos-arm64.tar.gz"
      sha256 "7fe64755ba77de392f50f77e0c243bfa5f10f2f636f8e803bd4cddb21b0e39c1"
    else
      url "https://github.com/evgenyneu/quagga/releases/download/v#{version}/quagga-macos-amd64.tar.gz"
      sha256 "018a1c7d7900523b14fb3343285a41040eb87a1ab681bf860d9f0178b10a9af0"
    end
  end

  on_linux do
    url "https://github.com/evgenyneu/quagga/releases/download/v#{version}/quagga-linux-amd64.tar.gz"
    sha256 "f751cefaaa01385e9b37697d80e3195b662830e76c0209772d3737ebf3621f81"
  end

  def install
    bin.install "quagga"
  end

  test do
    system "#{bin}/quagga", "--version"
  end
end
