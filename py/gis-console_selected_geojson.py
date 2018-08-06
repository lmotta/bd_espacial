layer = iface.activeLayer()
for feat in layer.selectedFeatures():
  print feat.geometry().exportToGeoJSON()
