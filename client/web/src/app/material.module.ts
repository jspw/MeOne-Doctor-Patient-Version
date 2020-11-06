import { NgModule } from '@angular/core';
import { MatCardModule } from '@angular/material/card';
import { MatButtonModule } from '@angular/material/button';
import { MatInputModule } from '@angular/material/input';
import { MatRadioModule } from '@angular/material/radio';
import { MatTableModule } from '@angular/material/table';
import { MatPaginatorModule } from '@angular/material/paginator';
import { MatSortModule } from '@angular/material/sort';


@NgModule({
    imports: [
        MatCardModule,
        MatButtonModule,
        MatInputModule,
        MatRadioModule,
        MatTableModule,
        MatPaginatorModule,
        MatSortModule
    ],
    exports: [
        MatCardModule,
        MatButtonModule,
        MatInputModule,
        MatRadioModule,
        MatTableModule,
        MatPaginatorModule,
        MatSortModule
    ]
})
export class MaterialModule { }
