//
//  LocationService.h
//  AirlineTickets
//
//  Created by Rodion Molchanov on 15.01.2021.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

#define kLocationServiceDidUpdateCurrentLocation @"LocationServiceDidUpdateCurrentLocation"

@interface LocationService : NSObject <CLLocationManagerDelegate>

@end
