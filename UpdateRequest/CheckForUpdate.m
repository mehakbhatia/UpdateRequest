//
//  CheckForUpdate.m
//  UpdateRequest
//
//  Created by Mehak on 5/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CheckForUpdate.h"
#import "ASIHTTPRequest.h"

@implementation CheckForUpdate

- (void)grabURLInBackground
{
    NSURL *url = [NSURL URLWithString:@"http://allseeing-i.com"];
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
    [request setDelegate:self];
    [request startAsynchronous];
}

- (void)requestFinished:(ASIHTTPRequest *)request
{
    // Use when fetching text data
    NSString *responseString = [request responseString];
    
    // Use when fetching binary data
  //  NSData *responseData = [request responseData];
    NSLog(@"the response string is %@",responseString);
}

- (void)requestFailed:(ASIHTTPRequest *)request
{
    NSError *error = [request error];
 //   NSLog(@"there was some error %@",error);
}
@end
