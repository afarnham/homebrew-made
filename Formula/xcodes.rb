class Xcodes < Formula
  desc "Manage the Xcodes installed on your Mac"
  homepage "https://github.com/afarnham/xcodes"
  url "https://github.com/afarnham/xcodes.git", tag: "0.15.1"
  head "https://github.com/afarnham/xcodes.git"

  bottle do
    root_url 'https://github.com/afarnham/xcodes/releases/download/0.15.1'
    cellar :any_skip_relocation
    sha256 "3e8a2d322d25a0038fe41820dc3caf2a35d04325f715912cec3906bb916d8cea" => :arm64_big_sur
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodes"
  end
end
