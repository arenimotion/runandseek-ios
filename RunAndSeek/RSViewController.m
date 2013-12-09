#import "RSViewController.h"
#import <GoogleMaps/GoogleMaps.h>


@interface RSViewController () {
     
 
  GMSMapView *mapView_;
}

@end

@implementation RSViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  // Position the camera at 0,0 and zoom level 1.
  /* GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:0.0
                                                          longitude:0.0
                                                               zoom:1];
   */

    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:0.0
                                                            longitude:0.0
                                                                 zoom:1];
  // Create the GMSMapView with the camera position.
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    mapView_.mapType = kGMSTypeTerrain;
    mapView_.indoorEnabled = NO;
    mapView_.settings.compassButton = YES;
    mapView_.settings.myLocationButton = YES;
    
    CLLocationCoordinate2D varDefaultTarget = CLLocationCoordinate2DMake(37.7833, -122.4167);
    mapView_.camera = [GMSCameraPosition cameraWithTarget:varDefaultTarget zoom:10];
    
    
    // Set the controller view to be the MapView.
    self.view = mapView_;
    
    
    GMSMarker *varMarker1 = [[GMSMarker alloc] init];
    varMarker1.position = CLLocationCoordinate2DMake(37.4, -122.14);
    varMarker1.title = @"Palo Alto";
    varMarker1.snippet = @"Donec et est ornare, interdum turpis suscipit, suscipit purus. ";
    varMarker1.icon = [GMSMarker markerImageWithColor:[UIColor orangeColor]];
    varMarker1.map = mapView_;

    
    GMSMarker *varMarker2 = [[GMSMarker alloc] init];
    varMarker2.position = CLLocationCoordinate2DMake(38.5, -121.49);
    varMarker2.title = @"Sacramento";
    varMarker2.snippet = @"Donec et est ornare, interdum turpis suscipit, suscipit purus.";
    varMarker2.map = mapView_;

    GMSMarker *varMarker3 = [[GMSMarker alloc] init];
    varMarker3.position = CLLocationCoordinate2DMake(37.7916444, -122.47897710000001);
    varMarker3.title = @"Andrew's Place";
    varMarker3.snippet = @"Donec et est ornare, interdum turpis suscipit, suscipit purus.";
    varMarker3.map = mapView_;
    
    [mapView_ animateToBearing:0];

}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

@end
