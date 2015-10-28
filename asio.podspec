Pod::Spec.new do |s|
  s.name             = "asio"
  s.version          = "1.10.1"
  s.summary          = "Asynchronous I/O Library"

  s.description      = <<-DESC
    Asio is a cross-platform C++ library for network and low-level I/O
    programming that provides developers with a consistent asynchronous
    model using a modern C++ approach.
                       DESC

  s.homepage         = "https://github.com/chriskohlhoff/asio"
  s.license          = { :type => 'Boost Software License', :file => "asio/LICENSE_1_0.txt" }
  s.author           = { "Jason Vasquez" => "jason@mugfu.com" }
  s.source           = { :git => "https://github.com/chriskohlhoff/asio.git", :tag => "asio-#{s.version.to_s.gsub(".", "-")}" }

  s.platform         = :ios, '7.0'
  s.requires_arc     = false

  s.dependency 'boost-ios'

  s.source_files = [
    'asio/include/asio.hpp',
    'asio/include/**/*.{h,i}pp'
  ]
  s.header_mappings_dir = 'asio/include'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => "$(SRCROOT)/asio/asio/include" }
  s.header_dir = '.'

end

