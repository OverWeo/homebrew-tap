class Weoline < Formula                                                                                                                                                                                                               
    desc "Fast, cross-platform terminal statusline for Claude Code"                                                                                        
    homepage "https://github.com/OverWeo/weoline"                                                                                                                                                                                       
    version "0.4.1"
    license "Apache-2.0"                                                                                                                                                                                                                
                                                                                                                                                                                                                                        
    on_macos do                          
      on_arm do                                                                                                                                                                                                                         
        url "https://github.com/OverWeo/weoline/releases/download/v0.4.1/weoline-aarch64-apple-darwin.tar.gz"                                              
        sha256 "9d193f798800c82b920fc30a04d7ef84de43b285759be67abba27a7c2b06e827"                                                                                                                                                       
      end                                                                                                                                                                                                                               
      on_intel do                                                                                                                                                                                                                       
        url "https://github.com/OverWeo/weoline/releases/download/v0.4.1/weoline-x86_64-apple-darwin.tar.gz"                                                                                                                            
        sha256 "872217b94a99c6d1d86410eb8bf40fe058da1b0dbd92b0766433542fcc742e73"                                                                                                                                                       
      end                                                                                                                                                                                                                               
    end                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                        
    on_linux do                                                                                                                                            
      on_arm do                          
        url "https://github.com/OverWeo/weoline/releases/download/v0.4.1/weoline-aarch64-unknown-linux-gnu.tar.gz"                                                                                                                      
        sha256 "d2a0f28e3d03e78a16fc77855fadb123618cad5b760baeed78987565d4285693"                                                                                                                                                       
      end                                                                                                                                                                                                                               
      on_intel do                                                                                                                                                                                                                       
        url "https://github.com/OverWeo/weoline/releases/download/v0.4.1/weoline-x86_64-unknown-linux-gnu.tar.gz"                                                                                                                       
        sha256 "2d5272ca32fe9aabe3c043dbe55bb877e09ce6408c5c4958cb3e6fc38a5fc75f"                                                                                                                                                       
      end                                                                                                                                                                                                                               
    end                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                        
    def install                                                                                                                                            
      bin.install "weoline"              
    end

    test do
      assert_match version.to_s, shell_output("#{bin}/weoline --version")
    end                                                                                                                                                                                                                                 
  end
