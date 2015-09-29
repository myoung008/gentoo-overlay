EAPI=5

inherit eutils linux-mod linux-info git-r3

DESCRIPTION="Enable additional functions for Logitech G710+ keyboard"
HOMEPAGE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
EGIT_REPO_URI="https://github.com/Wattos/logitech-g710-linux-driver.git"

DEPEND="virtual/linux-sources"

BUILD_TARGETS="clean default"
MODULE_NAMES="hid-lg-g710-plus"

pkg_setup() {
        linux-mod_pkg_setup
}

src_install() {
    linux-mod_src_install
#    emake DESTDIR="${D}" install
    dodoc README.md
#    linux-mod_src_install
}
