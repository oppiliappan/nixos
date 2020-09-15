{
  enable = true;
  backend = "xrender";
  fade = true;
  fadeDelta = 10;
  inactiveDim = "0.2";
  shadow = false;
  shadowOffsets = [ (-60) (-60) ];
  shadowOpacity = "0.20";
  shadowExclude = [
	"name = 'Notification'"
	"class_g = 'Conky'"
	"class_g ?= 'Notify-osd'"
	"_GTK_FRAME_EXTENTS@:c"
  ];
}
