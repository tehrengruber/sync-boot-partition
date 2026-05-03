pkgname=sync-boot-partition
pkgver=1.0.1
pkgrel=1
pkgdesc="Mirror /boot to /boot_fallback after kernel/initramfs updates"
arch=('any')
url="https://local/sync-boot-partition"
license=('MIT')
depends=('rsync' 'util-linux' 'bash')
source=('sync-boot.sh'
        '95-sync-boot-partition.hook')
sha256sums=('SKIP'
            'SKIP')

package() {
    install -Dm755 "$srcdir/sync-boot.sh" \
        "$pkgdir/usr/bin/sync-boot-partition"
    install -Dm644 "$srcdir/95-sync-boot-partition.hook" \
        "$pkgdir/usr/share/libalpm/hooks/95-sync-boot-partition.hook"
}