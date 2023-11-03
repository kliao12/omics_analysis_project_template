# README for Docker images

Each subdirectory for this directory includes a Dockerfile to build a Docker image that creates an environment for a component of an analysis. 

---
## Building an image

To build an x86-64/amd64 architecture compatible Docker image, use the following build command:

```sh
# Working dir must be src/docker
docker build --rm --file <image_name>/Dockerfile --tag <dockerhub_account>/<image_name>:<tag> .
```

The format for `<tag>` should be `yyyymmddhhmm_<architecture>` where `<architecture>` is one of `x86_64`, `arm64`, or `multiarch`. For example, the tag `202302241705_multiarch` signifies an image built on February 24, 2023 at 17:05 that is compatible with both the x86-64 and ARM64 architectures.

---
## Starting a container

For Docker containers with Jupyter Lab included, starting a Jupyter Lab session can be accomplished by calling:

```sh
docker run -p <host_port_number>:8888 -v <host_absolute_path_to_repo_root>:/<repo_name> --rm -t <image_tag> jupyter lab /<repo_name>
```

Assuming `<host_port_number>` is `8889`, the Jupyter session can be accessed via your web browser using the URL `http://127.0.0.1:8889/lab?token=<token_value>` where `<token_value>` is provided as command line output after calling `docker run`.

---
## Docker images

* `image name`: Description here. Explicitly installed packages:
  * [package name v0.0](URL)
* `code_linter`: Contains code linters for Python and R within Ubuntu 22.04. The following R and Python packages are explicitly installed via the Dockerfile:
  * [argparse v2.2.2](https://cran.r-project.org/package=argparse)
  * [lintr v3.0.2](https://cran.r-project.org/package=lintr)
  * [pylint v2.17.1](https://pypi.org/project/pylint/)
