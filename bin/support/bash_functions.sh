# helper functions for geo Cloud Native Buildpack

function download_package() {
    name="$1"
    url="$2"
    dest="$3"

    echo "---> Dowloading $name from $url"
    curl -L --silent --fail --retry 5 --retry-delay 1 --connect-timeout 3 --max-time 30 $url | tar -Jx -C $dest
}
