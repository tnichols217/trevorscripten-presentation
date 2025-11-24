{ src, runCommand, zip, ... }:
runCommand "presentation-zip" { buildInputs = [ zip ]; } ''
  mkdir -p $out
  zip -r $out/presentation.zip ${src}
''