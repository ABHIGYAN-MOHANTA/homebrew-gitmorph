class Gitmorph < Formula
  desc "Seamlessly switch between multiple Git identities with a Git wrapper"
  homepage "https://github.com/ABHIGYAN-MOHANTA/gitmorph"
  url "https://github.com/ABHIGYAN-MOHANTA/gitmorph/archive/refs/tags/v3.tar.gz"
  sha256 "5e67d45ec279e303137981fac12a94f5598d8bf828c6f09d3417a4e334ed6b2d"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/gitmorph"
  end

  test do
    # Verify the binary was installed and responds
    system "#{bin}/gitmorph", "--help"
  end
end
