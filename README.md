# base

The shared Python base image for `torana-fixpr-test` services.

- `requirements.in` lists the top-level packages every service may import.
- `requirements.lock` is that set compiled by `uv pip compile` (command in its header). Services do not pin these
  packages themselves; they get the versions resolved here.
