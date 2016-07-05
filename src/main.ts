import {bootstrap} from '@angular/platform-browser-dynamic';
import {enableProdMode} from '@angular/core';
import {AUTH_PROVIDERS} from 'angular2-jwt';
import {AppComponent, environment} from './app/';

if (environment.production) {
    enableProdMode();
}

bootstrap(AppComponent,[
    AUTH_PROVIDERS,
]);

