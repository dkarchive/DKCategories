Pod::Spec.new do |s| 
  s.name         = 'DKCategories'

  s.version      = '0.2'

  s.summary      = 'Useful Objective-C Categories'

  s.homepage     = 'https://github.com/dkhamsing/DKCategories'

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = { 'dkhamsing' => 'dkhamsing8@gmail.com' }
  
  s.social_media_url   = 'http://twitter.com/dkhamsing'
   
  s.platform     = :ios, '7.0'
 
  s.source       = { :git => 'https://github.com/dkhamsing/DKCategories.git', :tag => s.version.to_s }

  s.source_files  = 'DKCategories/*'
  
  s.requires_arc = true
end