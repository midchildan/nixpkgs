{ stdenv, fetchFromSavannah, autoreconfHook, bison, boehmgc, flex, gettext
, gnulib, jitter, json_c, nbd, pkg-config, readline, tcl, texinfo, tk, dejagnu
}:

stdenv.mkDerivation rec {
  pname = "poke-unstable";
  version = "2020-11-21";

  src = fetchFromSavannah {
    repo = "poke";
    rev = "652288087238eaf9628ea42c306dfacd0e73d88d";
    sha256 = "0rn0x0i0j51459hhay009qi4z2s0r1kadfxs9qh43g9dmysizb92";
  };

  patches = [ ./use-nix-packages.patch ];

  postPatch = ''
    patchShebangs .

    # Replaces what was removed in ./use-nix-packages.patch
    cp ${jitter}/share/aclocal/jitter.m4 m4/jitter.m4
    cp ${pkg-config}/share/aclocal/pkg.m4 m4/pkg.m4

    # FIXME: remove when a newer gnulib with gl_PROG_BISON is available
    cp ${./bison.m4} m4/bison.m4

    ./bootstrap --no-git --gnulib-srcdir=${gnulib}
  '';

  nativeBuildInputs =
    [ autoreconfHook bison flex gettext gnulib pkg-config texinfo ];
  buildInputs = [ boehmgc jitter json_c nbd readline tcl tk ];
  checkInputs = [ dejagnu ];

  doCheck = true;

  meta = with stdenv.lib; {
    description = "An interactive editor for binary data";
    homepage = "http://www.jemarch.net/poke";
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ midchildan ];
  };
}
