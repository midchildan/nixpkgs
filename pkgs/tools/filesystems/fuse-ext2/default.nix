{ lib, stdenv, fetchFromGitHub, autoreconfHook, fuse, macfuse-stubs, e2fsprogs
, libobjc }:

let
  fuse = if stdenv.isDarwin then macfuse-stubs else fuse;
in stdenv.mkDerivation rec {
  pname = "fuse-ext2-unstable";
  version = "2020-06-11";

  src = fetchFromGitHub {
    owner = "alperakcan";
    repo = "fuse-ext2";
    rev = "899f17c982dadcea13aa447c3a83c53b9431435a";
    sha256 = "0zramcvl79vi6c705n64v4nrb8fgdkdj739hv7hjy0wgfzwdjkh0";
  };

  nativeBuildInputs = [ autoreconfHook ];
  buildInputs = [ e2fsprogs fuse ] ++ lib.optional stdenv.isDarwin libobjc;

  # workaround for https://github.com/alperakcan/fuse-ext2/issues/102
  CPPFLAGS="-DUTIME_NOW=-1 -DUTIME_OMIT=-2";

  meta = with lib; {
    description = "EXT2/3/4 filesystem for FUSE";
    longDescription = macfuse-stubs.warning;
    homepage = "https://github.com/alperakcan/fuse-ext2";
    license = licenses.gpl2Plus;
    platforms = with platforms; darwin ++ linux;
    maintainers = with maintainers; [ midchildan ];
  };
}
