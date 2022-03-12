{
  description = ''HMAC-SHA1 and HMAC-MD5 hashing in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hmac-master".url = "path:./master";
  inputs."hmac-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_1".url = "path:./0_1_1";
  inputs."hmac-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_2".url = "path:./0_1_2";
  inputs."hmac-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_3".url = "path:./0_1_3";
  inputs."hmac-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_4".url = "path:./0_1_4";
  inputs."hmac-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_5".url = "path:./0_1_5";
  inputs."hmac-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_6".url = "path:./0_1_6";
  inputs."hmac-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_7".url = "path:./0_1_7";
  inputs."hmac-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_8".url = "path:./0_1_8";
  inputs."hmac-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_1_9".url = "path:./0_1_9";
  inputs."hmac-0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac-0_2_0".url = "path:./0_2_0";
  inputs."hmac-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}