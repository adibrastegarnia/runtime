# SPDX-FileCopyrightText: 2022-present Intel Corporation
#
# SPDX-License-Identifier: Apache-2.0

FROM alpine:3.15

RUN apk add libc6-compat

RUN addgroup -S atomix && adduser -S -G atomix atomix

USER atomix

COPY dist/bin/atomix-controller_linux_amd64_v1/atomix-controller /usr/local/bin/atomix-controller

ENTRYPOINT ["atomix-controller"]