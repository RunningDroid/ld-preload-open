My fork of [fritzw/ld-preload-open](https://github.com/fritzw/ld-preload-open), all I've done is change the paths.

I'm using this to keep some programs from wasting disk I/O on meaningless stuff and get them to (mostly) comply with the [XDG Basedir Spec](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)

I currently use this by adding `export LD_PRELOAD='/home/runningdroid/git/ld-preload-open/path-mapping_${LIB}.so'` to my xinitrc

[Archwiki:XDG Base Directory support](https://wiki.archlinux.org/index.php/XDG_Base_Directory_support)
