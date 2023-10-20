ENV_FILE=$1

egrep -iv '^#|password|^$|_auth|_secret|_passphrase|_token|_uri|_key|_cert' $ENV_FILE | sort > $ENV_FILE.non-secure

egrep -iv '^#|^$' $ENV_FILE | egrep -i 'password|_auth|_secret|_passphrase|_token|_uri|_key|_cert' | sort > $ENV_FILE.secure

egrep -v '^$|^#' $ENV_FILE | sort > $ENV_FILE.sorted
