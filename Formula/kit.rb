class Kit < Formula
  desc "Kubernetes Interactive Toolkit for Azure Kubernetes Service (AKS)"
  homepage "https://github.com/zaidhassan168/aks-tools"
  url "https://github.com/zaidhassan168/aks-tools/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "7570b10cce4494b96c4a5974a3fd2f045276601d3db4f10848be16651e008f18"
  license "MIT"

  depends_on "azure-cli"
  depends_on "kubernetes-cli"
  depends_on "python@3.12"
  depends_on "fzf" => :recommended

  def install
    bin.install "kit/kit"
  end

  test do
    assert_match "Kubernetes Interactive Toolkit", shell_output("#{bin}/kit --help")
  end
end
