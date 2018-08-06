layer = iface.activeLayer()
print map(lambda f: int(f['objectid']), layer.selectedFeatures() )
