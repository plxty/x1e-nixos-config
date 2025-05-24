{
  fetchFromGitHub,
  runCommand,
}:

let
  # TODO: Extract from exe directly:
  firmware = fetchFromGitHub {
    owner = "plxty";
    repo = "linux-firmware-asus-vivobook-s15";
    rev = "a7cbf210d4feac072168b61a8cb54fda507a3eae";
    hash = "sha256-095ynhxxedoIMo0ymLGDSEe2ufkWxLahk+W27LAXJrk=";
  };
in
runCommand "x1e80100-asus-vivobook-s15-firmware" { } ''
  mkdir -p $out/lib/firmware
  cp -a ${firmware}/qcom $out/lib/firmware/
''
