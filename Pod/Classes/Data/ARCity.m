
/**
 * Do NOT alter this file directly! It is auto-generated by the `./scripts/generate-cities-objc.ts` script.
 */

#import "ARCity.h"

@interface ARCity ()

- (instancetype)initWithName:(NSString *)name slug:(NSString *)slug epicenter:(CLLocation *)epicenter;

@end

@implementation ARCity

- (instancetype)initWithName:(NSString *)name slug:(NSString *)slug epicenter:(CLLocation *)epicenter;
{
    self = [super init];
    if (self) {
        _name = name;
        _slug = slug;
        _epicenter = epicenter;
    }
    return self;
}

+ (NSArray <ARCity *> *)cities
{
    static NSArray <ARCity *> *_computedCities = nil;
    if (!_computedCities) {
        _computedCities = @[
            [[ARCity alloc] initWithName:@"New York" slug:@"new-york-ny-usa" epicenter:[[CLLocation alloc] initWithLatitude:40.71 longitude:-74.01]],
            [[ARCity alloc] initWithName:@"Los Angeles" slug:@"los-angeles-ca-usa" epicenter:[[CLLocation alloc] initWithLatitude:34.05 longitude:-118.24]],
            [[ARCity alloc] initWithName:@"London" slug:@"london-united-kingdom" epicenter:[[CLLocation alloc] initWithLatitude:51.51 longitude:-0.13]],
            [[ARCity alloc] initWithName:@"Berlin" slug:@"berlin-germany" epicenter:[[CLLocation alloc] initWithLatitude:52.52 longitude:13.4]],
            [[ARCity alloc] initWithName:@"Paris" slug:@"paris-france" epicenter:[[CLLocation alloc] initWithLatitude:48.86 longitude:2.35]],
            [[ARCity alloc] initWithName:@"Hong Kong" slug:@"hong-kong-hong-kong" epicenter:[[CLLocation alloc] initWithLatitude:22.3 longitude:114.2]]
        ];
    }
    return _computedCities;
}

@end
