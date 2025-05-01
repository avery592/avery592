{
  linkThemes,
  stdenv,
  zola,
}:
stdenv.mkDerivation {
  pname = "avery592";
  version = "1.0.0";
  src = ./.;
  nativeBuildInputs = [zola];
  configurePhase = linkThemes;
  buildPhase = "zola build";
  installPhase = "cp -r public $out";
}
