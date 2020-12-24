namespace CoordinatorApp;

uses
  UIKit;

type
  AppCoordinator = public class(ICoordinator)
  private
    _navController : UINavigationController;
    _window: UIWindow;
  public

    constructor(navController:UINavigationController; window:UIWindow);
    begin
      _navController := navController;
      _window := window;
    end;

    method start;
    begin
      _window.rootViewController := _navController;
      _window.makeKeyAndVisible;

      var storyboard := UIStoryboard.storyboardWithName('Main') bundle(nil);
      var viewController := storyboard.instantiateViewControllerWithIdentifier('RootViewController');
      //viewController.delegate := self;
      _navController.setViewControllers([viewController]) animated(true);

    end;

  end;

end.