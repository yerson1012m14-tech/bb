#import "JASONXITFilzaBridge.h"

@implementation JASONXITFilzaBridge
+ (instancetype)shared {
    static JASONXITFilzaBridge *shared;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{ shared = [JASONXITFilzaBridge new]; });
    return shared;
}
- (void)prepareFilesystem { }
- (BOOL)isContainerManagerAvailable { return NO; }
- (NSString *)virtualRoot {
    return [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
}
- (NSString *)archivePath { return [self virtualRoot]; }
- (NSString *)dataContainerPathForIdentifier:(NSString *)identifier error:(NSString **)error {
    if (error) *error = @"App-container access requires an authorized provider or supported runtime.";
    return nil;
}
- (BOOL)pathHasActiveLease:(NSString *)path { return NO; }
@end
