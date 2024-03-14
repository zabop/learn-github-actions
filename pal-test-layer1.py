import shapely.geometry
import geopandas as gpd

# example point:
p = shapely.geometry.Point(-55.927846, 46.900790)

# example polygon:
c = shapely.geometry.Point(-55.931443, 46.900132).buffer(0.0001,resolution=3)

gpd.GeoSeries([p,c]).set_crs(4326).to_file("raw_data/source.geojson")