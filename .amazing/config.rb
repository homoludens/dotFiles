awesome {
  set :statusbar => "sbartop"
 
  widget("date") {
    set :module => :clock
    set :interval => 1
    set :format =>  "%b %e, %R"
  }

  widget("cpu_graph") {
    set :module => :cpu_usage
    set :property => "data cpu"
    set :interval => 1
    set :format => "data cpu #@usage"
  }

  widget("mem_bar") {
    set :module => :memory
    set :property => "data mem"
    set :interval => 10
    set :format => "data mem #@usage"

  }

  widget("mem_usage") {
    set :module => :memory
    property("text"){ "%2d %" % [@usage]}
    set :interval => 10
    set :format => "#@usage"

  }


  widget("battery") {
    set :module => :battery
    set :battery => 0
    property("text"){ "%2d %" % [@percentage]}
    set :interval => 30
    set :format => "#@percentage"

  }


  widget("vol_bar") {
    set :module => :alsa
    set :property => "data pcm"
    set :mixer => "PCM"
    set :interval => 1
    set :format => "data pcm #@volume"
  }



  widget("down") {
    set :module => :net_traffic
    property("text"){ "d: %3d" % [@download_rate]} 
    set :interface => "wlan0"
    set :interval => 1
    set :download_peak => 100
  }
  widget("up") {
    set :module => :net_traffic
    property("text"){ "u: %3d" % [@upload_rate]} 
    set :interface => "wlan0"
    set :interval => 1
    set :upload_peak => 16
  }
}
