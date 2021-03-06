cask 'beardedspice' do
  version '2.2.1'
  sha256 '42cb97350217f55c5ce8b50d3de664b7c2d6f5bc5fd1ec0da06e25c4f61e8ad9'

  url "https://github.com/beardedspice/beardedspice/releases/download/v#{version}/BeardedSpice-#{version}.zip"
  appcast 'https://github.com/beardedspice/beardedspice/releases.atom',
          checkpoint: 'b580811eb86d4441992912a85bbdd5802fb62b7cbac85144de4b4a1b50bcbaf3'
  name 'BeardedSpice'
  homepage 'https://github.com/beardedspice/beardedspice/'

  auto_updates true

  app 'BeardedSpice.app'

  zap delete: [
                '~/Library/Caches/com.beardedspice.BeardedSpice',
                '~/Library/Preferences/com.beardedspice.BeardedSpice.plist',
              ]
end
