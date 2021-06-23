if [ -n "${AWS_PROFILE}" ]; then
    echo "Reading from profile '${AWS_PROFILE}'."
    export AWS_ACCESS_KEY_ID=`aws configure get $AWS_PROFILE.aws_access_key_id`
    export AWS_SECRET_ACCESS_KEY=`aws configure get $AWS_PROFILE.aws_secret_access_key`
    export AWS_SESSION_TOKEN=`aws configure get $AWS_PROFILE.aws_session_token`
else
    echo "AWS_PROFILE not set"
fi
