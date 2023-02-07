# typed: false
# frozen_string_literal: true

class Kclvm < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://github.com/KusionStack/KCLVM"
  version "0.4.4"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.4/kclvm-v0.4.4-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "42ddf09ac01b09384f1b428afbc935fee62c01754cc248b4fa68bc91d7cb258f"

      def install
        bin.install "kclvm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.4/kclvm-v0.4.4-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "072c511ac5b391278e6393ed8473b95587a27adc91a779a6bc8ec9f02c3a3872"

      def install
        bin.install "kclvm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.4/kclvm-v0.4.4-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a65a91c99fafa9bc79785f5b20ef50f709289f014c390ae80cd6b8df8bb036cb"

      def install
        bin.install "kclvm"
      end
    end
  end

  test do
    system "#{bin}/kcl -V"
  end
end
