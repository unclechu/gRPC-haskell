# Given a Git revision hash `<rev>`, you get the new SHA256 by running:
#
# ```bash
# $ nix-prefetch-url "https://github.com/NixOS/nixpkgs/archive/<rev>.tar.gz"
# ```
#
# The SHA256 will be printed as the last line of stdout.

import (builtins.fetchTarball {
    # url    = "https://github.com/NixOS/nixpkgs/archive/dd9f73e7d34486b09b966738ace161e621a0480b.tar.gz";
    # sha256 = "0s674386v5b24a9fia26439gw9wsyhif85k2nzpxkp61293v3n3h";
    
    
    # nixos-22.05 at 2022-06-10
    # url = "https://github.com/NixOS/nixpkgs/archive/e5556c75ac012ee6e03f39a56c1c51b0f7d658c2.tar.gz";
    # sha256 = "00lrw73g0q7xl6mklr138zrjq4cpdk0cqk2py9nbz334v69acy3d";
    
    # release-22.05 at 2022-06-21
    url = "https://github.com/NixOS/nixpkgs/archive/d2ff0167ce734340e745ca1f53b11a0996ff17a4.tar.gz";
    sha256 = "sha256:1kk7ghmfxh1czgmr6j12al6m2sgh70zzm8dcddfjhbj5dcilfpgy";
  })

# fetchTarball {
#   # nixos-22.05 at 2022-06-10
#   url = "https://github.com/NixOS/nixpkgs/archive/e5556c75ac012ee6e03f39a56c1c51b0f7d658c2.tar.gz";
#   sha256 = "00lrw73g0q7xl6mklr138zrjq4cpdk0cqk2py9nbz334v69acy3d";
# }
