import { NgModule }       from '@angular/core';
import { BrowserModule }  from '@angular/platform-browser';
import { FormsModule }    from '@angular/forms';
import { HttpModule } from "@angular/http";

import { AppRoutingModule } from "./app-routing.module";


import { AppComponent } from "./app.component";
import { HeroDetailComponent } from "./components/hero-detail/hero-detail.component";
import { HeroesComponent } from "./components/heroes/heroes.component";
import { HeroService } from "./services/hero.service";
import { DashboardComponent } from "./components/dashboard/dashboard.component";

@NgModule({
  imports: [
    BrowserModule,
    FormsModule,
    AppRoutingModule,
    HttpModule,
  ],
  declarations: [
    AppComponent,
    HeroDetailComponent,
    HeroesComponent,
    DashboardComponent,
  ],
  providers: [HeroService],
  bootstrap: [ AppComponent ]
})
export class AppModule {
}
