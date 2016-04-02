
post_install() {
    apply "source $PEARL_PKGDIR/muttrc" $HOME/.muttrc
    if ask "Do you want to install mutt sidebar config too?" "N"
    then
        apply "source $PEARL_PKGDIR/muttrc-sidebar" $HOME/.muttrc
    fi
}

pre_remove() {
    unapply "source $PEARL_PKGDIR/muttrc" $HOME/.muttrc
    unapply "source $PEARL_PKGDIR/muttrc-sidebar" $HOME/.muttrc
}
