cask "scrobblrr" do
  version "1.1"
  sha256 "19768137bf4d8ba3ca9dea9e4a9f5128d36853f2449a74ac43f74bce9be72506"

  url "https://github.com/lyricalsoul/Scrobblrr/releases/download/#{version}/Scrobblrr.zip"
  name "Scrobblrr"
  desc "Menu bar last.fm scrobbler for Apple Music"
  homepage "https://lyricalsoul.io/scrobblrr"

  livecheck do
    url "https://lyricalsoul.io/scrobblrr/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Scrobblr.app"

  zap trash: [
    "~/Library/Caches/io.lyricalsoul.Scrobblrr",
    "~/Library/Containers/io.lyricalsoul.Scrobblrr",
    "~/Library/Preferences/io.lyricalsoul.Scrobblrr.plist",
  ]
end
