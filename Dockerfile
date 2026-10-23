ARG MINIFORGE_VERSION=26.1.1-2
ARG UBUNTU_VERSION=24.04
ARG CONDA_ENV_PATH=/opt/conda/envs/fido

FROM condaforge/miniforge3:${MINIFORGE_VERSION} AS builder

ARG CONDA_ENV_PATH
ARG FIDO_VERSION=1.0

RUN mamba create -qy -p "${CONDA_ENV_PATH}" \
    -c conda-forge -c bioconda \
    "fido=${FIDO_VERSION}" && \
    mamba clean -afy

FROM ubuntu:${UBUNTU_VERSION} AS final

ARG CONDA_ENV_PATH

COPY --from=builder "${CONDA_ENV_PATH}" "${CONDA_ENV_PATH}"

ENV CONDA_ENV_PATH="${CONDA_ENV_PATH}" \
    PATH="${CONDA_ENV_PATH}/bin:${PATH}"

RUN groupadd -g 500001 bldocker && \
    useradd -r -u 500001 -g bldocker bldocker

USER bldocker

LABEL maintainer="Chenghao Zhu <czhu@sbpdiscovery.org>" \
      org.opencontainers.image.source="https://github.com/TheBoutrosLab/docker-Fido" \
      org.opencontainers.image.title="Fido" \
      org.opencontainers.image.description="Fido protein inference for MS/MS proteomics"
