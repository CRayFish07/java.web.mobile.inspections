package ar.com.nicobrest.mobileinspections.controller;
 
import ar.com.nicobrest.mobileinspections.exception.HelloWorldNotFoundException;
import ar.com.nicobrest.mobileinspections.model.HelloWorldUser;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
 
/**
 * @since v0.02 
 * @author nbrest
 * 
 *         Controller class for the helloWorld test endpoints
 */
@Controller
@RequestMapping(value = "/helloWorld")
public class HelloWorldController {

  private static final Logger LOGGER = LoggerFactory.getLogger(HelloWorldController.class);

  @Autowired
  private HelloWorldUser gohanHelloWorldUser;

  // @AutoWired + @Qualifier("gotenHelloWorldUser")
  @Resource(name = "gotenHelloWorldUser")
  private HelloWorldUser gotenHelloWorldUser;

  /** 
   * @since v0.02 
   * @param name : Nombre del usuario que visita el sitio
   * @return ModelAndView
   * 
   *         Returns the ModelAndView object for the test endpoint
   *         /helloWorld/modelAndView
   */
  @RequestMapping(value = "/modelAndView", method = RequestMethod.GET)
  public ModelAndView getModelAndView(
      @RequestParam(value = "name", required = false, defaultValue = "Goku") String name) {

    LOGGER.info("In controller /helloWorld/modelAndView");

    String message = "message: HelloWorld ModelAndView!";

    ModelAndView mv = new ModelAndView("helloWorld/modelAndView");
    mv.addObject("message", message);
    mv.addObject("name", name);

    return mv;
  }

  /**
   * @since v0.02 
   * @return HelloWorldUser
   * 
   *         Returns the HelloWorldUser object in json format for the test
   *         endpoint /helloWorld/json
   * @throws Exception : General exception
   */
  @RequestMapping(value = "/json", method = RequestMethod.GET)
  @ResponseBody
  public List<HelloWorldUser> getJson(
      @RequestParam(value = "action", required = false, defaultValue = "goku") 
      String action) throws Exception {

    LOGGER.info("In controller /helloWorld/json");
 
    HelloWorldUser helloWorldUser1 = new HelloWorldUser();
    helloWorldUser1.setAge(21);
    helloWorldUser1.setEmail("goku@dbz.com");
    helloWorldUser1.setUsername("goku");
    
    List<HelloWorldUser> helloWorldUsers = new ArrayList<HelloWorldUser>();
    helloWorldUsers.add(helloWorldUser1);
    helloWorldUsers.add(gohanHelloWorldUser);
    helloWorldUsers.add(gotenHelloWorldUser);

    switch (action) {
      case "HelloWorldNotFoundException":
        throw new HelloWorldNotFoundException("*** HelloWorldNotFoundException in getJson ***");
        // break;
      case "RuntimeException":
        throw new RuntimeException("*** RuntimeException in getJson ***");
        // break;
      case "Exception":
        throw new Exception("*** Exception in getJson ***");
        // break;
      default:
        break;
    }

    return helloWorldUsers;
  }

}
