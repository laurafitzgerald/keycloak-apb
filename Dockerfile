FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"bmFtZToga2V5Y2xvYWstYXBiCmltYWdlOiBmZWVkaGVucnkva2V5Y2xvYWstYXBiCmRlc2NyaXB0\
aW9uOiBLZXljbG9hayAtIHNlY3VyZSBrZXkvdmFsdWUgc3RvcmUKYmluZGFibGU6IEZhbHNlCmFz\
eW5jOiBvcHRpb25hbAp0YWdzOiAKICAtIG1vYmlsZS1zZXJ2aWNlCm1ldGFkYXRhOgogIGRpc3Bs\
YXlOYW1lOiBLZXljbG9hawogIGNvbnNvbGUub3BlbnNoaWZ0LmlvL2ljb25DbGFzczogZmEgZmEt\
dXNlcnMKcGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogRGVwbG95IGtl\
eWNsb2FrCiAgICBmcmVlOiBUcnVlCiAgICBtZXRhZGF0YToge30KICAgIHBhcmFtZXRlcnM6IAog\
ICAgLSBuYW1lOiBBRE1JTl9OQU1FCiAgICAgIHJlcXVpcmVkOiBUcnVlCiAgICAgIGRlZmF1bHQ6\
IGFkbWluCiAgICAgIHR5cGU6IHN0cmluZwogICAgICB0aXRsZTogS2V5Y2xvYWsgYWRtaW4gdXNl\
cm5hbWUKICAgIC0gbmFtZTogQURNSU5fUEFTU1dPUkQKICAgICAgcmVxdWlyZWQ6IFRydWUKICAg\
ICAgZGVmYXVsdDogYWRtaW4KICAgICAgdHlwZTogc3RyaW5nCiAgICAgIHRpdGxlOiBLZXljbG9h\
ayBhZG1pbiBwYXNzd29yZAo="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
