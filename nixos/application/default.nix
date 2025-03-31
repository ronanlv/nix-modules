{lib, ...}:

with lib;
{
  imports = [
    ./bash.nix
    ./bind.nix
    ./binutils.nix
    ./busybox.nix
    ./coreutils.nix
    ./curl.nix
    ./diceware.nix
    ./dust.nix
    ./e2fsprogs.nix
    ./fzf.nix
    ./git.nix
    ./htop.nix
    ./iftop.nix
    ./inetutils.nix
    ./iotop.nix
    ./kitty.nix
    ./lazydocker.nix
    ./less.nix
    ./links.nix
    ./lsof.nix
    ./mtr.nix
    ./nano.nix
    ./ncdu.nix
    ./openbao.nix
    ./pciutils.nix
    ./psmisc.nix
    ./rsync.nix
    ./strace.nix
    ./tmux.nix
    ./wget.nix
  ];
}
