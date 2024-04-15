{ lib
, buildPythonPackage
, fetchPypi
, fetchFromGitHub
, setuptools
, wheel
}:

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
