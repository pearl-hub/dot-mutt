
post_install() {
    link mutt "$PEARL_PKGDIR/muttrc"
    if ask "Do you want to install mutt sidebar config too?" "N"
    then
        link mutt "$PEARL_PKGDIR/muttrc-sidebar"
    fi
}

post_update() {
    post_install
}

pre_remove() {
    unlink mutt "$PEARL_PKGDIR/muttrc"
    unlink mutt "$PEARL_PKGDIR/muttrc-sidebar"
}
