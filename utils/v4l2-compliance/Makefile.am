bin_PROGRAMS = v4l2-compliance
man_MANS = v4l2-compliance.1
DEFS :=

if HAVE_M32
if WITH_V4L2_COMPLIANCE_32
bin_PROGRAMS += v4l2-compliance-32
endif
endif

v4l2_compliance_SOURCES = v4l2-compliance.cpp v4l2-compliance.h \
	v4l2-test-debug.cpp v4l2-test-input-output.cpp \
	v4l2-test-controls.cpp v4l2-test-io-config.cpp v4l2-test-formats.cpp v4l2-test-buffers.cpp \
	v4l2-test-codecs.cpp v4l2-test-subdevs.cpp v4l2-test-media.cpp v4l2-test-colors.cpp \
	media-info.cpp v4l2-info.cpp
v4l2_compliance_CPPFLAGS = -I$(top_srcdir)/utils/common

if WITH_V4L2_COMPLIANCE_LIBV4L
v4l2_compliance_LDADD = ../../lib/libv4l2/libv4l2.la ../../lib/libv4lconvert/libv4lconvert.la -lrt -lpthread
else
v4l2_compliance_LDADD = -lrt -lpthread
DEFS += -DNO_LIBV4L2
endif

EXTRA_DIST = Android.mk fixme.txt v4l2-compliance.1

v4l2-compliance.cpp: version.h

version.h:
	@if [ -d $(top_srcdir)/.git ]; then \
		echo -n "#define SHA " >$@ ; \
		git -C $(top_srcdir) rev-parse HEAD >>$@ ; \
	else \
		touch $@ ; \
	fi

nodist_v4l2_compliance_32_SOURCES = v4l2-compliance-32.c

v4l2-compliance-32$(EXEEXT): $(addprefix $(top_srcdir)/utils/v4l2-compliance/,$(v4l2_compliance_SOURCES))
	$(CXXCOMPILE) -o $@ -static -m32 -DNO_LIBV4L2 -I$(top_srcdir) -I$(top_srcdir)/include -I$(top_srcdir)/utils/common $(addprefix $(top_srcdir)/utils/v4l2-compliance/,$(filter %.cpp,$(v4l2_compliance_SOURCES)))

clean-local:
	-rm -vf version.h

