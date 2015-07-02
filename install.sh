
cd /tmp \
    && rm -rf ./docker-extras \
    && echo "Setting up 'docker-extras'...." \
    && git clone https://github.com/jgallen23/docker-extras.git &> /dev/null \
    && cd docker-extras \
    && git checkout \
        $(git describe --tags $(git rev-list --tags --max-count=1)) \
        &> /dev/null \
    && make install
