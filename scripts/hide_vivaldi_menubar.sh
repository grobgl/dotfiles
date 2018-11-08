# requires vivaldi to have _use native window_ setting set to false
echo "
#header {
  min-height: 0 !important;
  z-index: auto !important;
}
.button-toolbar.home {
  display: none !important;
}
.topmenu {
  display: none !important;
}
" >> /opt/vivaldi/resources/vivaldi/style/common.css
