//
//  FlxTouches.h
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

@class UITouch;

@interface FlxTouches : NSObject
{
  BOOL newData;
  NSSet * touches;
  BOOL touchesBegan;
  BOOL touchesEnded;
  BOOL touching;
  BOOL nextTouchesBegan;
  BOOL nextTouchesEnded;
    
    BOOL iCadeUp;
    BOOL iCadeRight;
    BOOL iCadeLeft;
    BOOL iCadeDown;  
    BOOL iCadeA;
    BOOL iCadeB;
    BOOL iCadeC;
    BOOL iCadeD;    
    BOOL iCadeE;
    BOOL iCadeF;
    BOOL iCadeG;
    BOOL iCadeH;
    
  CGPoint nextScreenTouchPoint;
  CGPoint nextLastScreenTouchPoint;
  CGPoint screenTouchPoint;
  CGPoint lastScreenTouchPoint;
  CGPoint nextScreenTouchBeganPoint;
  CGPoint screenTouchBeganPoint;
}
@property(nonatomic,readonly) BOOL touching;
@property(nonatomic,readonly) BOOL touchesBegan;
@property(nonatomic,readonly) BOOL touchesEnded;
@property(nonatomic,readonly) CGPoint touchPoint;
//@property(nonatomic,readonly) NSArray * touchPoints;
@property(nonatomic,readonly) CGPoint lastTouchPoint;
@property(nonatomic,readonly) CGPoint screenTouchPoint;
@property(nonatomic,readonly) CGPoint lastScreenTouchPoint;
@property(nonatomic,readonly) CGPoint screenTouchBeganPoint;
@property(nonatomic,readonly) CGPoint touchBeganPoint;

@property(nonatomic,readonly) BOOL iCadeUp;
@property(nonatomic,readonly) BOOL iCadeRight;
@property(nonatomic,readonly) BOOL iCadeLeft;
@property(nonatomic,readonly) BOOL iCadeDown;  
@property(nonatomic,readonly) BOOL iCadeA;
@property(nonatomic,readonly) BOOL iCadeB;
@property(nonatomic,readonly) BOOL iCadeC;
@property(nonatomic,readonly) BOOL iCadeD;
@property(nonatomic,readonly) BOOL iCadeE;
@property(nonatomic,readonly) BOOL iCadeF;
@property(nonatomic,readonly) BOOL iCadeG;
@property(nonatomic,readonly) BOOL iCadeH;






- (void) update;
@end
