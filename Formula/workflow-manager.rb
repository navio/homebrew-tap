class WorkflowManager < Formula
  desc "CLI runner for markdown and JSON workflow orchestration"
  homepage "https://github.com/navio/workflow-manager"
  url "https://github.com/navio/workflow-manager/releases/download/v0.2.0/wfm-macos-arm64"
  version "0.2.0"
  sha256 "4d4f1c3b085ffd625b7bea2a969e257cb6e81385d9b137c13290981641e5c9ba"
  license "MIT"

  def install
    bin.install "wfm-macos-arm64" => "wfm"
    bin.install_symlink "wfm" => "workflow-manager"
  end

  test do
    output = shell_output("#{bin}/wfm --help")
    assert_match "workflow", output.downcase

    alias_output = shell_output("#{bin}/workflow-manager --help")
    assert_match "workflow", alias_output.downcase
  end
end
