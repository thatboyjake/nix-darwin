{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.

  home.username = "jakehackl";
  home.packages = with pkgs; 
		[ 
			# Editor
			neovim
			# Parsing
			ghostscript 
			# Info
			btop
			neofetch
			# Shell
      fish
      nushell
		  # Doom emacs required or notes
		  asciidoctor
      aspell
      bat
      fd
      gnuplot
      nb
      ranger
      ripgrep
      tree-sitter
			silver-searcher
			kitty
		];
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.

  home.sessionVariables.EDITOR = "nvim";
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05";


  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
