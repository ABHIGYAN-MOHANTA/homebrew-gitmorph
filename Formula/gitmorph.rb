class Gitmorph < Formula
  desc "Seamlessly switch between multiple Git identities with a Git wrapper"
  homepage "https://github.com/ABHIGYAN-MOHANTA/gitmorph"
  url "https://github.com/ABHIGYAN-MOHANTA/gitmorph/archive/refs/tags/v3.0.1.tar.gz"
  sha256 "3b6828a258d20c478a5744095dc434b18dcbd4986ce9904ed930208a55b7fb88"
  license "MIT"
  head "https://github.com/ABHIGYAN-MOHANTA/gitmorph.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/gitmorph"
  end

  test do
    # Verify that the command runs
    assert_match "gitmorph", shell_output("#{bin}/gitmorph --help")
  end
end
