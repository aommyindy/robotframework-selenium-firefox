# Build
``` bash
docker build --rm -f Dockerfile -t robotframework-selenium-firefox .
```

# Run (bash)
``` bash
docker run -it --rm \
-v $(pwd)/tests:/tests/ \
-v $(pwd)/out:/out:rw \
robotframework-selenium-firefox \
--outputdir /out /tests
```

# note
_$(pwd) = local path_ 