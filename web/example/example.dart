import 'package:angular/angular.dart';
import 'dart:html';

@Component(
    selector: 'example-ctrl',
    useShadowDom: false,
    templateUrl: '/angular-ui.dart.accordion/web/example/example.html')
class ExampleController {
  ExampleController();
}

/**
 * Accordion controller.
 */
@Component(
    selector: 'myAccordion',
    useShadowDom: false,
    templateUrl: '/angular-ui.dart.accordion/web/example/accordion.html')

class AccordionDemoCtrl implements ScopeAware {
  Scope scope;
  bool oneAtATime = true;
  bool isOpen = false;
}


class ExampleModule extends Module {
  ExampleModule() {
    bind(AccordionDemoCtrl);
    bind(ExampleController);
  }
}
