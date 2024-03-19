import { Injectable } from "@nestjs/common";

@Injectable()
export class AuthService {
  test() {
    console.log("Testing");
  }

  signup() {
    return "I'm signed up";
  }

  signin() {
    return "I'm signed in";
  }
}
