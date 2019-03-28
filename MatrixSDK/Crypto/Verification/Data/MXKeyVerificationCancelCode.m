/*
 Copyright 2019 New Vector Ltd

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "MXKeyVerificationCancelCode.h"

@implementation MXKeyVerificationCancelCode

- (instancetype)initWithValue:(NSString*)value humanReadable:(NSString*)humanReadable
{
    self = [self init];
    if (self)
    {
        self.value = value;
        self.humanReadable = humanReadable;
    }
    return self;
}

+ (instancetype)user
{
    return [[MXKeyVerificationCancelCode alloc] initWithValue:@"m.user" humanReadable:@"The user cancelled the verification"];
}

+ (instancetype)timeout
{
    return [[MXKeyVerificationCancelCode alloc] initWithValue:@"m.timeout" humanReadable:@"The verification process timed out"];
}

+ (instancetype)unknownTransaction
{
    return [[MXKeyVerificationCancelCode alloc] initWithValue:@"m.unknown_transaction" humanReadable:@"The device does not know about that transaction"];
}

+ (instancetype)unknownMethod
{
    return [[MXKeyVerificationCancelCode alloc] initWithValue:@"m.unknown_method" humanReadable:@"The device can’t agree on a key agreement, hash, MAC, or SAS method"];
}

+ (instancetype)mismatchedCommitment
{
    return [[MXKeyVerificationCancelCode alloc] initWithValue:@"m.mismatched_commitment" humanReadable:@"The hash commitment did not match"];
}

+ (instancetype)mismatchedSas
{
    return [[MXKeyVerificationCancelCode alloc] initWithValue:@"m.mismatched_sas" humanReadable:@"The SAS did not match"];
}

+ (instancetype)unexpectedMessage
{
    return [[MXKeyVerificationCancelCode alloc] initWithValue:@"m.unexpected_message" humanReadable:@"The device received an unexpected message"];
}

+ (instancetype)invalidMessage
{
    return [[MXKeyVerificationCancelCode alloc] initWithValue:@"m.invalid_message" humanReadable:@"An invalid message was received"];
}

@end
