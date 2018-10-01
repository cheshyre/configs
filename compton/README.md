# Compton

Compton is a compositor for the X Window System. Its primary purpose in my setup is to prevent screen tearing when using [i3](../i3) as my window manager. Compton configurations working are pretty driver-dependent and as a result, it is possible that the configuration here will not work out of the box on another setup. Refer to the [compton repo wiki](https://github.com/chjj/compton/wiki/perf-guide), the [Arch wiki page](https://wiki.archlinux.org/index.php/compton#Using_a_configuration_file), and/or [this example](http://duncanlock.net/blog/2013/06/07/how-to-switch-to-compton-for-beautiful-tear-free-compositing-in-xfce/) for options to tweak to fix your configuration.

# Installation

For Ubuntu and Arch, compton is available via `apt` and `pacman` respectively.

# Additional Notes

Between two setups with Ubuntu 16.04 and 18.04, the settings for xrender sync had to be changed for it to work. If it doesn't work out of the box, I recommend uncommenting those lines in the config before experimenting with other options.

Another potential configuration to focus for troubleshooting is the `vsync` value. This seems to be pretty driver-dependent.

