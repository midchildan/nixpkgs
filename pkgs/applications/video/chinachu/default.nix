{ stdenv, buildEnv, fetchFromGitHub, libva, ffmpeg, makeWrapper, nodejs }:

let
  nodePackages = import ./composition.nix  {
    inherit (stdenv) system;
  };

  chinachuEnv = buildEnv {
    name = "chinachu-env";
    paths = with nodePackages; [
      "chinachu-upnp-server"
      "dateformat"
      "diskusage"
      "easy-table"
      "geoip-lite"
      "hoard"
      "http-auth"
      "ip"
      "mdns-js"
      "mirakurun"
      "mkdirp"
      "mtwitter"
      "nodemailer"
      "nodemailer-sendmail-transport"
      "opts"
      "pm2"
      "socket.io"
      "string"
      "swagger-client"
      "xml2js"
    ];
  };
in
  stdenv.mkDerivation rec {
    name = "chinachu-${version}";
    version = "2017-12-22";

    src = fetchFromGitHub {
      owner = "Chinachu";
      repo = "Chinachu";
      rev = "a69d5e99b75ddd770146e65d6171704be28ec01a";
      sha256 = "16dxjmwr20hyd83ip275kikxg6vy17i9rc7gzhc5sal4afgwzc8l";
    };

    buildInputs = [ libva ffmpeg nodejs makeWrapper ];

    installPhase = ''
      mkdir -p $out/bin $out/libexec
      cp -r . $out/libexec
      (
        export HOME="$TMPDIR"
        cd $out/libexec
        npm --offline install ./common
      )
      patchShebangs $out/libexec/chinachu
      wrapProgram $out/libexec/chinachu \
        --set NODE_PATH "${chinachuEnv}/lib/node_modules"
      ln -s $out/libexec/chinachu $out/bin/chinachu
    '';

    meta = {
      description = "Most Lovely DVR Software in Japan.";
      homepage = https://chinachu.moe/;
    };
  }
