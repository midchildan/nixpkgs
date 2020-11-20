{ stdenv, fetchurl, autoreconfHook, bison, flex, gnulib, help2man, texinfo }:

stdenv.mkDerivation rec {
  pname = "jitter";
  version = "0.9.235";

  src = fetchurl {
    url =
      "http://git.ageinghacker.net/git/cgit.cgi/jitter/snapshot/jitter-${version}.tar.xz";
    sha256 = "0fbi7x8wqfnh5irhsl19z7d0m0r7sklnwqg7j4bl61x8nrhjpmm2";
  };

  nativeBuildInputs = [ autoreconfHook bison flex gnulib help2man texinfo ];

  postPatch = ''
    patchShebangs .
    ./bootstrap --no-git --gnulib-srcdir=${gnulib}
  '';

  meta = with stdenv.lib; {
    description = "An efficient language VM generator";
    homepage = "http://git.ageinghacker.net/git/cgit.cgi/jitter";
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ midchildan ];
  };
}
