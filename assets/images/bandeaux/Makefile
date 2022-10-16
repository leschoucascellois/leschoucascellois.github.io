# We assume that every .jpg file is a source image.
# We show the most recent images first.
IMAGES := $(shell ls *.jpg | sort -r)
# The annotated images form the frames of the animation.
FRAMES := $(patsubst %.jpg,%-annotated.webp,$(IMAGES))
# Delay, in milliseconds.
DELAY  := 5000

animation.webp: $(FRAMES)
	webpmux $(patsubst %.webp,-frame %.webp +$(DELAY),$(FRAMES)) -o $@

# Convert .jpg to .png.
%.png: %.jpg
	magick convert $< $@

# Annotate a .png image with a superimposed caption.
# The source image is %.png.
# The caption is read from %.txt.
# The annotated image is %-annotated.png.
%-annotated.png: %.png %.txt
	magick convert $< \
	  -font helvetica -fill white -pointsize 48 \
	  -gravity southwest -annotate +60+60 "$(shell cat $*.txt)" \
	  $*-annotated.png

# Convert .png to .webp.
%.webp: %.png
	cwebp $< -o $@

.PHONY: clean
clean:
	rm -f 20*.webp *.png
