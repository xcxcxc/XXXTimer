Pod::Spec.new do |s|
  s.name     = 'XXXTimer'
  s.version  = '0.1.0'
  s.platform = :ios, '6.0'
  s.license  = 'MIT'
  s.summary  = '不会引起对象循环引用, 并且在dealloc的时候, 自动停止的NSTimer~'
  s.homepage = 'http://git-cc.gz.netease.com/gzxiongcheng/ccdanmaku'
  s.author   = { 'xc' => 'xc@veryxc.com' }
  s.source   = { :git => '', :tag => s.version.to_s }

  s.description = '不会引起对象循环引用, 并且在dealloc的时候, 自动停止的NSTimer~'

  s.source_files = 'XXXTimer/XXXTimer/*.{h,m}'
  s.requires_arc = true
end
