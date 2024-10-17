class Quagga < Formula
  desc "A command-line utility that combines multiple text files into a single prompt suitable for Large Language Models."
  homepage "https://github.com/evgenyneu/quagga"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/evgenyneu/quagga/releases/download/v#{version}/quagga-macos-arm64.tar.gz"
      sha256 "88648a1848ad0bc0f75241389d1fb87311c16036ffe17f03c60209e73984ff53"
    else
      url "https://github.com/evgenyneu/quagga/releases/download/v#{version}/quagga-macos-amd64.tar.gz"
      sha256 "a08066bf2926d5a01b4843342736541e1fd07238638e6e2e866efcc413cb5d7e"
    end
  end

  on_linux do
    url "https://github.com/evgenyneu/quagga/releases/download/v#{version}/quagga-linux-amd64.tar.gz"
    sha256 "9c35985a8ad7b01d8970e9b0a878c8eae969d4ea0c1a8bce1336a9f9f28beff4"
  end

  def install
    bin.install "quagga"
  end

  test do
    system "#{bin}/quagga", "--version"
  end
end
