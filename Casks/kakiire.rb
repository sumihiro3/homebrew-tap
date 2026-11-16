cask "kakiire" do
  version "0.11.0"
  sha256 "a4f2c939b01f2ffa8e686c06b12a60d62c9628ed1d6246dedc7e223ea8d26866"

  url "https://github.com/sumihiro3/kakiire/releases/download/v#{version}/Kakiire.dmg"
  name "Kakiire"
  desc "Screenshot annotation app"
  homepage "https://kakiire.tep-lab.com/"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Kakiire.app"

  zap trash: [
    "~/Library/Containers/com.tep-lab.kakiire",
    "~/Library/Containers/com.tep-lab.kakiire.preview",
    "~/Library/Containers/com.tep-lab.kakiire.thumbnail",
  ]
end
