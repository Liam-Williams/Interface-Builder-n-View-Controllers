# Interface-Builder-n-View-Controllers
 Interface Builder and View Controllers examples for Lighthouse Labs lecture

## Interface Builder
Today we talked about using interface builder. We looked at all the tabs of XCode's inspector and what they're used for. The most-used one is probably the "Attributes" inspector, which we can use to configure various properties of the view (exactly which will depend on the particular view in question). While there are some things to be wary of in using interface builder (the most prominent one being difficulties merging changes), they allow a much more declarative and obvious way of designing the graphical interface.

## Storyboards and Passing Data
We talked about how storyboards extend what XIBs can do, by allowing us to graphically lay out the flow of an application between multiple view controllers, by creating segues between the scenes. Our view controller can control if a segue will happen by overriding the "shouldPerformSegueWithIdentifier:sender:" method and returning YES or NO and can pass data to the controller it will segue to by overriding "prepareForSegue:sender:", getting the controller we're seguing to via the segue's "destinationViewController" property, and then setting properties on it.

## Size Classes
We also talked about size classes in Interface Builder. By clicking on the bar at the bottom of the storyboard, we can change our layout from the default "Any Height x Any Width" to a specific class (Regular or Compact). This will show how our layout will look in that particular size class, and we can add constraints that will only apply in that size. This can be useful if we want to tweak our layout for different devices. Just be careful that you're in the default "Any x Any" for most of your work, or you may find yourself adding all your constraints for only one specific size class!

## View Controllers Life-Cycle
Lastly, we talked about the view controller life cycle and container view controllers. View controllers have a number of lifecycle methods that get called as the view is created (viewDidLoad), appears (viewWillAppear, viewDidAppear), and disappears (viewWillDisappear, viewDidDisappear). "viewDidLoad" is probably the most common one to override, as it is a good place to put the initialization code for your view controller.

## Container View Controllers
Some common container view controllers are split-view controllers, tab bar controllers, and navigation controllers. They are view controllers that themselves contain other view controllers. You can make your own container view controllers, although this is not terribly common.
