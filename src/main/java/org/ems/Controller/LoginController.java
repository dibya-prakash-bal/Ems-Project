package org.ems.Controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class LoginController {

    @GetMapping("/")
    public String login() {
        return "login";
    }

    @GetMapping("/ForgetPass")
    public String forgetPass() {
        return "forgetpass";
    }

    @GetMapping("/otp-verify")
    public String otpVerify() {
        return "otpVerify";
    }

    @GetMapping("reset-pass")
    public String resetPass() {
        return "resetPass";
    }
}
