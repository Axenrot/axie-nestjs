import { Injectable } from "@nestjs/common";
import { PrismaService } from "src/prisma/prisma.service";
import { AuthDto } from "./dto";
import * as argon from "argon2";

@Injectable()
export class AuthService {
  constructor(private prisma: PrismaService) {}
  test() {
    console.log("Testing");
  }

  async signup(dto: AuthDto) {
    // generate password hash
    const hash = await argon.hash(dto.password);

    // save user in db
    const user = await this.prisma?.user.create({
      data: {
        email: dto.email,
        hash: hash,
      },
    });
    return user;
  }

  signin() {
    return "I'm signed in";
  }
}
