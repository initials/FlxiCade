//
//  FlxTouches.m
//  flixel-ios
//
//  Copyright Semi Secret Software 2009-2010. All rights reserved.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import <Flixel/Flixel.h>

@interface FlxTouches ()
- (CGPoint) internalScreenTouchPoint;
@end

@implementation FlxTouches

@synthesize touchesBegan, touchesEnded, touching;
@synthesize screenTouchPoint, lastScreenTouchPoint;
@synthesize screenTouchBeganPoint;

@synthesize iCadeUp, iCadeRight, iCadeDown, iCadeLeft;
@synthesize iCadeA, iCadeB, iCadeC, iCadeD;
@synthesize iCadeE, iCadeF, iCadeG, iCadeH;
@synthesize iCadeUpBegan, iCadeRightBegan, iCadeDownBegan, iCadeLeftBegan;
@synthesize iCadeABegan, iCadeBBegan, iCadeCBegan, iCadeDBegan;
@synthesize iCadeEBegan, iCadeFBegan, iCadeGBegan, iCadeHBegan;

- (void) processTouches:(NSSet *)newTouches
{
  BOOL getScreenTouchBeganPoint = NO;
  if ((touches == nil || [touches count] == 0) &&
      (newTouches != nil && [newTouches count] > 0)) {
    nextTouchesBegan = YES;
    getScreenTouchBeganPoint = YES;
  }
  if ((newTouches == nil || [newTouches count] == 0) &&
      (touches != nil && [touches count] > 0))
    nextTouchesEnded = YES;
  [touches release];
  touches = [newTouches retain];

  nextLastScreenTouchPoint = nextScreenTouchPoint;
  nextScreenTouchPoint = self.internalScreenTouchPoint;
  if (getScreenTouchBeganPoint)
    nextScreenTouchBeganPoint = nextScreenTouchPoint;
  newData = YES;
}

- (void) update
{
  //reset these right away
  touchesBegan = NO;
  touchesEnded = NO;
    
    //iCadeUp=NO;
//    iCadeRight=NO;
//    iCadeDown=NO;
//    iCadeLeft=NO; 
// 
//    iCadeA=NO;
//    iCadeB=NO;
//    iCadeC=NO;
//    iCadeD=NO;
//    iCadeE=NO;
//    iCadeF=NO;
//    iCadeG=NO;
//    iCadeH=NO;
    
    iCadeUpBegan=NO;
    iCadeRightBegan=NO;
    iCadeDownBegan=NO;
    iCadeLeftBegan=NO; 
    
    iCadeABegan=NO;
    iCadeBBegan=NO;
    iCadeCBegan=NO;
    iCadeDBegan=NO;
    iCadeEBegan=NO;
    iCadeFBegan=NO;
    iCadeGBegan=NO;
    iCadeHBegan=NO;    
    
  if (newData) {
    touchesBegan = nextTouchesBegan;
    touchesEnded = nextTouchesEnded;
    nextTouchesBegan = NO;
    nextTouchesEnded = NO;
    touching = [touches count] > 0;
    lastScreenTouchPoint = nextLastScreenTouchPoint;
    screenTouchPoint = nextScreenTouchPoint;
    screenTouchBeganPoint = nextScreenTouchBeganPoint;
  }
  newData = NO;
    
    
    FlxGame * game = [FlxG game];
    
    //joystick up
    
    if (game.iCadeJoystickUp  ) {
        
        if (iCadeUp==NO) {
            iCadeUpBegan=YES;
        }
        else {
            iCadeUpBegan=NO;
        }
        
        iCadeUp=YES;
    }
    else {
        iCadeUp=NO;
    }
 
    //joystick Right
    
    if (game.iCadeJoystickRight  ) {
        
        if (iCadeRight==NO) {
            iCadeRightBegan=YES;
        }
        else {
            iCadeRightBegan=NO;
        }
        
        iCadeRight=YES;
    }
    else {
        iCadeRight=NO;
    }
    
    //joystick Down
    
    if (game.iCadeJoystickDown  ) {
        
        if (iCadeDown==NO) {
            iCadeDownBegan=YES;
        }
        else {
            iCadeDownBegan=NO;
        }
        
        iCadeDown=YES;
    }
    else {
        iCadeDown=NO;
    }
    
    //joystick Left
    
    if (game.iCadeJoystickLeft  ) {
        
        if (iCadeLeft==NO) {
            iCadeLeftBegan=YES;
        }
        else {
            iCadeLeftBegan=NO;
        }
        
        iCadeLeft=YES;
    }
    else {
        iCadeLeft=NO;
    }
    
    //Button A
    
    if (game.iCadeButtonA  ) {
        
        if (iCadeA==NO) {
            iCadeABegan=YES;
        }
        else {
            iCadeABegan=NO;
        }
        
        iCadeA=YES;
    }
    else {
        iCadeA=NO;
    }
    
    //Button B
    
    if (game.iCadeButtonB  ) {
        
        if (iCadeB==NO) {
            iCadeBBegan=YES;
        }
        else {
            iCadeBBegan=NO;
        }
        
        iCadeB=YES;
    }
    else {
        iCadeB=NO;
    }    
    
    //Button C
    
    if (game.iCadeButtonC  ) {
        
        if (iCadeC==NO) {
            iCadeCBegan=YES;
        }
        else {
            iCadeCBegan=NO;
        }
        
        iCadeC=YES;
    }
    else {
        iCadeC=NO;
    }
    
    //Button D
    
    if (game.iCadeButtonD  ) {
        
        if (iCadeD==NO) {
            iCadeDBegan=YES;
        }
        else {
            iCadeDBegan=NO;
        }
        
        iCadeD=YES;
    }
    else {
        iCadeD=NO;
    }
    
    //Button E
    
    if (game.iCadeButtonE  ) {
        
        if (iCadeE==NO) {
            iCadeEBegan=YES;
        }
        else {
            iCadeEBegan=NO;
        }
        
        iCadeE=YES;
    }
    else {
        iCadeE=NO;
    }
    
    //Button F
    
    if (game.iCadeButtonF  ) {
        
        if (iCadeF==NO) {
            iCadeFBegan=YES;
        }
        else {
            iCadeFBegan=NO;
        }
        
        iCadeF=YES;
    }
    else {
        iCadeF=NO;
    }    
    
    //Button G
    
    if (game.iCadeButtonG  ) {
        
        if (iCadeG==NO) {
            iCadeGBegan=YES;
        }
        else {
            iCadeGBegan=NO;
        }
        
        iCadeG=YES;
    }
    else {
        iCadeG=NO;
    }
    
    //Button H
    
    if (game.iCadeButtonH  ) {
        
        if (iCadeH==NO) {
            iCadeHBegan=YES;
        }
        else {
            iCadeHBegan=NO;
        }
        
        iCadeH=YES;
    }
    else {
        iCadeH=NO;
    }
    
    
}


- (CGPoint) touchPoint
{
  CGPoint p = screenTouchPoint;
  p.x -= FlxG.scroll.x;
  p.y -= FlxG.scroll.y;
  return p;
}

- (CGPoint) lastTouchPoint
{
  CGPoint p = lastScreenTouchPoint;
  p.x -= FlxG.scroll.x;
  p.y -= FlxG.scroll.y;
  return p;
}

- (CGPoint) touchBeganPoint
{
  CGPoint p = screenTouchBeganPoint;
  p.x -= FlxG.scroll.x;
  p.y -= FlxG.scroll.y;
  return p;
}

- (CGPoint) internalScreenTouchPoint
{
  CGPoint p = CGPointZero;
  UITouch * t = nil;
  if ([touches count] > 0) {
    t = [touches anyObject];
    p = [t locationInView:t.view];
  }
  if (t == nil && [touches count] > 0) {
    NSLog(@"what's going on?!?");
  }
  if (t == nil) {
    return p;
  }
  //todo: potentially a different point depending upon screen orientation
  //also need to scale by zoom
  FlxGame * game = [FlxG game];
  float z = game.zoom;
  if (FlxG.retinaDisplay)
    z = z/2;
  UIDeviceOrientation o = game.currentOrientation;
  switch (o) {
  case UIDeviceOrientationPortrait:
    p.x = p.x/z;
    p.y = p.y/z;
    break;
  case UIDeviceOrientationPortraitUpsideDown:
    p.x = (t.view.bounds.size.width-p.x)/z;
    p.y = (t.view.bounds.size.height-p.y)/z;
    break;
  case UIDeviceOrientationLandscapeLeft:
    {
      CGFloat x = p.x;
      p.x = p.y/z;
      p.y = (t.view.bounds.size.width-x)/z;
      break;
    }
  case UIDeviceOrientationLandscapeRight:
    {
      CGFloat x = p.x;
      p.x = (t.view.bounds.size.height-p.y)/z;
      p.y = x/z;
      break;
    }
  }
  if (FlxG.game.textureBufferZoom) {
    p.x /= 2;
    p.y /= 2;
  }
  return p;
}

@end
