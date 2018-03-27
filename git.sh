if [[ "$1" == "knife" ]]; then
    open "http://www.kaidalgleish.io/knife.html"
    echo "Rescue checklist:"
    echo "  [ ] delete local repo"
    echo "  [ ] restore from Dropbox"
    echo "  [ ] rejoice"
else
    command git "$@"
fi
