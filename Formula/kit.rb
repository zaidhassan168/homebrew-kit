class Kit < Formula
  desc "Kubernetes Interactive Toolkit for Azure Kubernetes Service (AKS)"
  homepage "https://github.com/zaidhassan168/aks-tools"
  url "https://github.com/zaidhassan168/aks-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "5aa0065b1cad00d570a4647697aa083f0b611f3a234c1339177d1f024f652dcc"
  license "MIT"
  version "1.0.0"

  depends_on "azure-cli"
  depends_on "kubernetes-cli"
  depends_on "python@3.12"
  depends_on "fzf" => :recommended

  def install
    bin.install "kit/kit"
    bin.install "aksc/aksc"
    bin.install "aksm/aksm"
  end

  test do
    assert_match "Kubernetes Interactive Toolkit", shell_output("#{bin}/kit --help")
  end
end
