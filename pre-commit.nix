{ lib
, buildPythonPackage
, fetchPypi
, fetchFromGitHub
, setuptools
, wheel
}:

# https://github.com/NixOS/nixpkgs/blob/nixos-23.11/pkgs/tools/misc/pre-commit/default.nix#L180
# it is at version 3.3.3 though
buildPythonPackage rec {
  pname = "pre_commit";
  version = "3.7.0";

  # normally, this would be a fetchFromGitHub or a fetchPypi
  src = ./.;

  # do not run tests
  doCheck = false;

  propagatedBuildInputs = [
    # ...
    setuptools
  ];

  # specific to buildPythonPackage, see its reference
  pyproject = true;
  build-system = [
    setuptools
    wheel
  ];
}
