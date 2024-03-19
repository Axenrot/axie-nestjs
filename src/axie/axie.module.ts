import { Module } from "@nestjs/common";
import { AxieService } from "./axie.service";

@Module({
  providers: [AxieService],
})
export class AxieModule {}
