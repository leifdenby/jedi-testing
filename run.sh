# init


if [ "$#" -lt 1 ]; then
    echo "usage: $0 jedi-rev [parso-rev]"
    echo
else
    pip2 uninstall -y --quiet jedi parso > /dev/null 2>&1
    pip2 install git+git://github.com/davidhalter/jedi.git@${1}

    if [ "$#" -eq 3 ]; then
         pip2 install git+git://github.com/davidhalter/parso.git@${1}
    fi
    echo "First call:"
    python2 test.py
    echo "Second call:"
    python2 test.py
fi
