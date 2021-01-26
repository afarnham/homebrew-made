class Xcodes < Formula
  desc "Manage the Xcodes installed on your Mac"
  homepage "https://github.com/afarnham/xcodes"
  url "https://github.com/afarnham/xcodes.git", tag: "0.15.1"
  head "https://github.com/afarnham/xcodes.git"

  bottle do
    root_url 'https://github.com/afarnham/xcodes/releases/download/0.15.1'
    cellar :any_skip_relocation
    sha256 "d66cfb801f91788b265b304c4f6cb3140fc37bb96b5372534579dd5d00e3b509" => :arm64_big_sur
  end

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcodes"
  end
end
