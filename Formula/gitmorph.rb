class Gitmorph < Formula
  desc "Switch between multiple Git profiles effortlessly 🚀"
  homepage "https://github.com/ABHIGYAN-MOHANTA/gitmorph"
  url "https://github.com/ABHIGYAN-MOHANTA/gitmorph/archive/refs/tags/v3.0.1.tar.gz"
  sha256 "f3619120d7e8af5adc120936798c27448df16ff5c2bb71d761078ff2e760fc01"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./cmd/gitmorph"
  end

  test do
    system "#{bin}/gitmorph", "--version"
  end
end
