namespace CoordinatorApp;

interface

uses
  UIKit;

type
  [IBObject]
  RootViewController = public class(UIViewController)
  private
  public
    method viewDidLoad; override;
    begin
      inherited viewDidLoad;

      // Do any additional setup after loading the view.
    end;

    method didReceiveMemoryWarning; override;
    begin
      inherited didReceiveMemoryWarning;

      // Dispose of any resources that can be recreated.
    end;

  end;

implementation

end.