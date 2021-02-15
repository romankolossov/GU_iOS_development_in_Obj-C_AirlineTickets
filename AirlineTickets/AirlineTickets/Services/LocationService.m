//
//  LocationService.m
//  AirlineTickets
//
//  Created by Rodion Molchanov on 15.01.2021.
//

#import "LocationService.h"
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>



@interface LocationService ()

    @property (nonatomic, strong) CLLocationManager *locationManager;
    @property (strong, nonatomic) CLLocation *currentLocation;

@end

@implementation LocationService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _locationManager = [[CLLocationManager alloc] init];
        _locationManager.delegate = self;
        [_locationManager requestAlwaysAuthorization];
    }
    return self;
}

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status {
    
    if (status == kCLAuthorizationStatusAuthorizedAlways || status == kCLAuthorizationStatusAuthorizedWhenInUse) {
        [_locationManager startUpdatingLocation];
    } else if (status != kCLAuthorizationStatusNotDetermined) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"sorry", "") message:NSLocalizedString(@"not_determine_current_city", "The current city is not found") preferredStyle: UIAlertControllerStyleAlert];
        [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"sorry", "") style:(UIAlertActionStyleDefault) handler:nil]];
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alertController animated:YES completion:nil];
    }
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    
    if (!_currentLocation) {
        _currentLocation = [locations firstObject];
        [_locationManager stopUpdatingLocation];
        [[NSNotificationCenter defaultCenter] postNotificationName:kLocationServiceDidUpdateCurrentLocation object:_currentLocation];
    }
}



@end
