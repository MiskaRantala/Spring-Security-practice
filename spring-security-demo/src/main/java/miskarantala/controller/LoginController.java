package miskarantala.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    // request login page
    @GetMapping("/showMyLoginPage")
    public String showMyLoginPage() {

        return "fancy-login";
    }

    // request access denied page
    @GetMapping("/access-denied")
    public String showAccessDenied() {

        return "access-denied";
    }
}
