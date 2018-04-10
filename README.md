# Build
``` bash
docker build --rm -f Dockerfile -t aommyindy/robotframework-selenium-firefox .
```

# Run (bash)
``` bash
docker run -it --rm \
-v $(pwd)/tests:/tests/ \
-v $(pwd)/out:/out:rw \
aommyindy/robotframework-selenium-firefox \
--outputdir /out /tests
```

# note
_$(pwd) = local path_ 