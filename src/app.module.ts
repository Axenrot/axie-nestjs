/* eslint-disable prettier/prettier */
import { Module } from "@nestjs/common";
import { AuthModule } from "./auth/auth.module";
import { UserModule } from './user/user.module';
import { AxieModule } from './axie/axie.module';

@Module({
  imports: [AuthModule, UserModule, AxieModule],
})
export class AppModule {}
