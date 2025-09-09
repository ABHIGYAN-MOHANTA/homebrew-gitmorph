class Gitmorph < Formula
  desc "Switch between multiple Git profiles effortlessly 🚀"
  homepage "https://github.com/ABHIGYAN-MOHANTA/gitmorph"
  url "https://github.com/ABHIGYAN-MOHANTA/gitmorph/archive/refs/tags/v3.0.1.tar.gz"
  sha256 "5e67d45ec279e303137981fac12a94f5598d8bf828c6f09d3417a4e334ed6b2d"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./cmd/gitmorph"
  end

  test do
    system "#{bin}/gitmorph", "--version"
  end
end
