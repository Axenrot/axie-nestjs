/* eslint-disable prettier/prettier */
import { Module } from "@nestjs/common";
import { AuthModule } from "./auth/auth.module";
import { UserModule } from './user/user.module';
import { AxieModule } from './axie/axie.module';
import { BookmarkModule } from './bookmark/bookmark.module';
import { PrismaModule } from './prisma/prisma.module';

@Module({
  imports: [AuthModule, UserModule, AxieModule, BookmarkModule, PrismaModule],
})
export class AppModule {}
