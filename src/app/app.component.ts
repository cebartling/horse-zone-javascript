import {Component} from '@angular/core';
import {AuthService} from "./auth.service";

@Component({
    providers: [AuthService],
    moduleId: module.id,
    selector: 'app-root',
    templateUrl: 'app.component.html',
    styleUrls: ['app.component.css']
})
export class AppComponent {
    title = 'app works!';

    constructor(private authService:AuthService) {
    }
}
