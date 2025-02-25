# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kusion < Formula
  desc "Codify and deliver intentions to Kubernetes and Clouds"
  homepage "https://github.com/KusionStack/kusion"
  version "0.7.3"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KusionStack/kusion/releases/download/v0.7.3/kusion_0.7.3_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "42ddf09ac01b09384f1b428afbc935fee62c01754cc248b4fa68bc91d7cb258f"

      def install
        bin.install "kusion"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/kusion/releases/download/v0.7.3/kusion_0.7.3_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "072c511ac5b391278e6393ed8473b95587a27adc91a779a6bc8ec9f02c3a3872"

      def install
        bin.install "kusion"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/kusion/releases/download/v0.7.3/kusion_0.7.3_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a65a91c99fafa9bc79785f5b20ef50f709289f014c390ae80cd6b8df8bb036cb"

      def install
        bin.install "kusion"
      end
    end
  end

  test do
    system "#{bin}/kusion version"
  end
end
