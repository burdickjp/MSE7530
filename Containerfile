# ── Base image: Jupyter Docker Stacks — datascience-notebook ──────────────
# Pinned to a dated tag for reproducibility.
# Update the tag to the latest weekly build when you want to refresh.
# See: https://jupyter-docker-stacks.readthedocs.io/
FROM quay.io/jupyter/datascience-notebook:2026-07-28

# ── Switch back to the default notebook user (UID 1000, name jovyan) ──────
USER ${NB_UID}

# ── Install Python packages ────────────────────────────────────────────────
# PyX is available on conda-forge
# Renard is not on conda-forge, is on PyPI only

RUN pip install --user --no-cache-dir pyx renard
