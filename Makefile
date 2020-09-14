
# RDDL says where to download everything; located at http://www.w3.org/2001/XMLSchema

files = \
  XMLSchema.xsd \
  datatypes.dtd \
  XMLSchema.dtd \


.PHONY: download
download: ${files}

.PHONY: purge
purge:
	${RM} ${files}

XMLSchema.xsd:
	curl -o $@ http://www.w3.org/2001/XMLSchema.xsd

datatypes.dtd:
	curl -o $@ http://www.w3.org/2001/datatypes.dtd

XMLSchema.dtd:
	curl -o $@ http://www.w3.org/2001/XMLSchema.dtd
