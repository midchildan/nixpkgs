{ stdenv, fetchFromGitHub, autoreconfHook, DiskArbitration }:

stdenv.mkDerivation {
  pname = "osxfuse-unstable";
  version = "2020-10-21";

  src = fetchFromGitHub {
    owner = "osxfuse";
    repo = "fuse";
    rev = "c6a59bed40bb526c113f861ed49a78b5f224805a";
    sha256 = "1xpc7p4xx7jwlpwjfs83f69451cnqhamvx5whhbpd8i8qw235nb7";
  };

  postPatch = ''
    touch config.rpath
  '';

  nativeBuildInputs = [ autoreconfHook ];
  buildInputs = [ DiskArbitration ];

  CFLAGS = "-DOSXFUSE_VERSION=\\\"4.0.4\\\" -D_DARWIN_FEATURE_64_BIT_INODE";

  meta = with stdenv.lib; {
    homepage = "https://osxfuse.github.io";
    description = "C-based FUSE for macOS SDK";
    platforms = platforms.darwin;
    license = licenses.gpl2;
  };
}
