# cn-buildpack-geo

A Cloud Native Buildpack for the main geo/gis libraries like geos, proj and gdal.

This buildpack is mainly adapted from [heroku-geo-buildpack](https://github.com/cyberdelia/heroku-geo-buildpack).

## Usage

1- Clone the repository:

```bash
git clone https://github.com/speedyrails/cn-buildpack-geo.git
```

2- Add the buildpack to the project:

```bash
pack build myapp --builder heroku/buildpacks:18 --buildpack /path/to/cn-buildpack-geo --path /path/to/myapp
```

**NOTE:**

- The geo vendor versions used by this buildpack are:
  - geos-3.6.1
  - gdal-2.1.3
  - proj-4.9.3
- The binaries will be available from the `PATH` environment variable.
- The shared libraries will be available from the `LD_LIBRARY_PATH` environment variable.
- Other exported environment variables are:
  - `GEOS_LIBRARY_PATH`
  - `GDAL_LIBRARY_PATH`
  - `PROJ4_LIBRARY_PATH`
  - `GDAL_DATA`
  - `BUNDLE_BUILD__RGEO`
