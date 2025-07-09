abstract class DrawerStates{}
class DrawerDataState extends DrawerStates{
  bool isDrawerOpen;
  DrawerDataState({this.isDrawerOpen = false});
}