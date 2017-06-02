FROM ansibleplaybookbundle/apb-base
# MAINTAINER {{ $MAINTAINER }}

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"aWQ6IDhhMDQ5NjM3LThjNzAtNDQzNC05OTNjLWExNWMzZDMxMDUxMwpuYW1lOiByaHNjbC1wb3N0\
Z3Jlc3FsLWFwYgppbWFnZTogYW5zaWJsZXBsYXlib29rYnVuZGxlL3Joc2NsLXBvc3RncmVzcWwt\
YXBiCmRlc2NyaXB0aW9uOiBTQ0wgUG9zdGdyZVNRTCBhcGIgaW1wbGVtZW50YXRpb24KYmluZGFi\
bGU6IHRydWUKYXN5bmM6IG9wdGlvbmFsCm1ldGFkYXRhOgogIGRpc3BsYXlOYW1lOiAiUmVkIEhh\
dCBTQ0wgUG9zdGdyZVNRTCIKICBsb25nRGVzY3JpcHRpb246ICJBbiBhcGIgdGhhdCBkZXBsb3lz\
IHBvc3RncmVzcWwgOS40IG9yIDkuNS4iCiAgaW1hZ2VVcmw6ICJodHRwczovL3dpa2kucG9zdGdy\
ZXNxbC5vcmcvaW1hZ2VzL2EvYTQvUG9zdGdyZVNRTF9sb2dvLjNjb2xvcnMuc3ZnIgogIGRvY3Vt\
ZW50YXRpb25Vcmw6ICJodHRwczovL3d3dy5wb3N0Z3Jlc3FsLm9yZy9kb2NzLyIKcGFyYW1ldGVy\
czoKICAtIHBvc3RncmVzcWxfZGF0YWJhc2U6CiAgICAtIHRpdGxlOiBQb3N0Z3JlU1FMIERhdGFi\
YXNlIE5hbWUKICAgICAgdHlwZTogc3RyaW5nCiAgICAgIGRlZmF1bHQ6IGFkbWluCiAgLSBwb3N0\
Z3Jlc3FsX3Bhc3N3b3JkOgogICAgLSB0aXRsZTogUG9zdGdyZVNRTCBQYXNzd29yZAogICAgICBk\
ZXNjcmlwdGlvbjogQSByYW5kb20gYWxwaGFudW1lcmljIHN0cmluZyBpZiBsZWZ0IGJsYW5rCiAg\
ICAgIHR5cGU6IHN0cmluZwogICAgICBkZWZhdWx0OiBhZG1pbgogIC0gcG9zdGdyZXNxbF91c2Vy\
OgogICAgLSB0aXRsZTogUG9zdGdyZVNRTCBVc2VyCiAgICAgIHR5cGU6IHN0cmluZwogICAgICBk\
ZWZhdWx0OiBhZG1pbgogICAgICBtYXhsZW5ndGg6IDYzCiAgLSBwb3N0Z3Jlc3FsX3ZlcnNpb246\
CiAgICAtIHRpdGxlOiBQb3N0Z3JlU1FMIFZlcnNpb24KICAgICAgdHlwZTogZW51bQogICAgICBk\
ZWZhdWx0OiA5LjUKICAgICAgZW51bTogWyI5LjUiLCAiOS40Il0KcmVxdWlyZWQ6CiAgLSBwb3N0\
Z3Jlc3FsX2RhdGFiYXNlCiAgLSBwb3N0Z3Jlc3FsX3VzZXIKICAtIHBvc3RncmVzcWxfdmVyc2lv\
bgo="

RUN yum -y install postgresql-apb-role && yum clean all

USER apb
