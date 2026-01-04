cask "codmate" do
  name "CodMate"
  desc "CodMate is a macOS SwiftUI app for managing CLI AI sessions: browse, search, organize, resume, and review work produced by Codex, Claude Code, and Gemini CLI. It focuses on speed, a compact three-column UI, and “ship it” workflows like Project Review (Git Changes) and one-click Resume/New."
  homepage "https://umate.ai/codmate"

  version "0.5.8"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "95977edb507cd00fdbe555cc838772a12d80e74f8b9d710c292159fcbe6df141",
         intel: "8c908b9f5c4cdeb3ea20204e179614035b95efb12d077f1ed32104a32ca7552f"

  depends_on macos: ">= :ventura"

  url "https://github.com/loocor/codmate/releases/download/#{version}/codmate-#{arch}.dmg",
    verified: "github.com/loocor/codmate/releases/download"

  app "CodMate.app"

  zap trash: [
    "~/.codmate",
    "~/Library/Caches/CodMate",
  ]
end
