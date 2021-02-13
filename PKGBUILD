# Maintainer: Breadtard <breadboithetard@gmail.com>
pkgname=bread-dotfiles
pkgver=git
pkgrel=1
pkgdesc="my awful awful dotfiles"
arch=('any')
url="https://github.com/breadtard/dotfiles"
license=('breadlicense')
makedepends=('git' 'sed')
depends=('i3-gaps' 'alacritty' 'polybar' 'rofi' 'nitrogen' 'picom' 'dunst')
optdepends=('emacs: the best editor that nobody knows how to use'
            'discord-canary: the full shithole expirience'
            'betterdiscordctl: the complete shithole expirence'
            'i can just put whatever i want here: so thats pog')
source=("git+https://github.com/breadtard/dotfiles")
md5sums=('SKIP')

prepare() {
	cd "$pkgname-$pkgver"
    _username = $USER
}

build() {
	cd "$pkgname-$pkgver"
}

check() {
	cd "$pkgname-$pkgver"
	printf 'pretend the check is done'
}

package() {
	cd "$pkgname-$pkgver"
	install -Dm=740 polybar-config $pkgdir/home/$_username/.config/polybar/config
    install -Dm=740 polybar.sh $pkgdir/home/$_username/.config/polybar/start.sh
    install -Dm=740 alacritty-theme.yml $pkgdir/home/$_username/.config/alacritty-theme.yml
    cat alacritty.yml | sed -e 's+/home/breadboi/Downloads/alacritty-master/dracula.yml+/home/$_username/.config/alacritty-theme.yml+g' > alacritty.yml
    install -Dm740 alacritty.yml $pkgdir/home/$_username/.config/alacritty.yml
    install -Dm740 dunstrc $pkgdir/home/$_username/.config/dunst/dunstrc
    install -Dm740 i3-config $pkgdir/home/$_username/.config/i3/config
    install -Dm740 picom.conf $pkgdir/home/$_username/.config/picom.conf

}
