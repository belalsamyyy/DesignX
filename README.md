# DesignX ( X for Extensions ) 
Collection of Design extensions' one-line-functions trying to mimic the tools of UI/UX like Adobe XD and Figma, so anything designer can do you can do without writting alot of code ✨

![Simulator Screen Recording - iPhone 11 - 2022-03-12 at 17 21 04](https://user-images.githubusercontent.com/38237387/158025997-6a756e2d-0b1f-477a-a660-1cb69be07af3.gif)

## Features

### constraints and layouts 
- [X] Constraints are active by default.
- [X] No need to set `translatesAutoresizingMaskIntoConstraints` because `DesignX` does it for you.
- [X] Satisfy all constraints `X-axis`, `Width`, `Y-axis` & `Height` in one line function `layout()`
- [X] by covering different ways to statisfy each constraint using `enum` parameters
- [X] also have `constraint()` function to use constraints individually 
- [X] add array of subviews 

### create
- [X] create dynamic `UIScrollView` by one line function `create`
- [X] create `UIStackView` by one line function `create`
- [X] create attributed `UILabel` text by one line function `create`

### style 
- [X] fill with image, gradient or color ( `hex`, `uicolor`, `rgb` )
- [X] rounded corners for all corners or specify each corner individually
- [X] rotate the view to a certain angle 
- [X] make a shadow background for your view 
- [X] change the shape of your view to a square or circle 
- [X] make a stroke or border to your view 
- [X] build a series of animation actions and transfromations 


## Installation

DesignX is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DesignX'
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```swift 
    import 'DesignX'
```

## Usage 

Constraints behave different if it's attach to `superview` or `any other view`

 `nil = superview` by default, so its easy to change superview without change alot of code 

### superview :
- [X] leading to `leading` of  superview
- [X] trailling to `trailing` of superview
- [X] top to `top` of superview
- [X] bottom to `bottom` of superview

### any other view :
- [X] leading to `trailing` of view
- [X] trailling to `leading` of view
- [X] top to `bottom` of view
- [X] bottom to `top` of view

## Author

BelalSamy, belalsamy10@gmail.com

## License

DesignX is available under the MIT license. See the LICENSE file for more info.
