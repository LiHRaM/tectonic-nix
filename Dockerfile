FROM docker.io/nixos/nix

RUN nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs
RUN nix-channel --update

RUN nix-env -i tectonic

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]