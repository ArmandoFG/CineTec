import { Component, OnInit } from '@angular/core';
import { Form, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router, UrlSegment } from '@angular/router';
import { PeliculaService } from 'src/app/services/pelicula.service';



@Component({
  selector: 'app-agregar-pelicula',
  templateUrl: './agregar-pelicula.component.html',
  styleUrls: ['./agregar-pelicula.component.css'],
})
export class AgregarPeliculaComponent implements OnInit {

  form: FormGroup;
  form2: FormGroup;
  nombre_pelicula: string | null;
  titulo = "Agregar Pelicula";

  constructor(private fb: FormBuilder, 
    private _peliculaService: PeliculaService,
    private aRoute: ActivatedRoute,
    private fb2: FormBuilder) 
    { 
      this.form = this.fb.group({
        nombre: ['', Validators.required],
        nombre_original: ['', Validators.required],
        duracion: ['', Validators.required],
        url_imagen: ['', Validators.required]
      });

      this.form2 = this.fb2.group({
        hora: ['', Validators.required],
        nombre_cine: ['', Validators.required],
        nombre_pelicula: ['', Validators.required],
        sala_id: ['', Validators.required]
      })

      this.nombre_pelicula = this.aRoute.snapshot.paramMap.get("nombre_pelicula");
    }

  ngOnInit(): void {
    this.esEditar();
  }

  esEditar(){
    if (this.nombre_pelicula == null){
      this.titulo = "Agregar Pelicula"
    }else{
      console.log(this._peliculaService.getPeliculaByNombre(this.nombre_pelicula))
      this.titulo = "Editar Pelicula";
      this._peliculaService.getPeliculaByNombre(this.nombre_pelicula).subscribe(
        result => {
          console.log(result);
          this.form.setValue({
            nombre: result.nombre,
            nombre_original: result.nombre_original,
            duracion: result.duracion,
            url_imagen: result.imagen,
        });
        this.form2.setValue({
          hora: "",
          nombre_pelicula: result.nombre,
          nombre_cine: "",
          sala_id: "",
        });
        },
        error => {
          console.log("ERROR CON EL GET")
        });
    }
  }

  agregarEditarPelicula(){
    if (this.nombre_pelicula == null){
      this.agregarPelicula();
    }else{
      this.editarPelicula();
    }
  }

  editarPelicula(){
    console.log("ES EDITAR");
  }

  agregarPelicula(){
    console.log("ES AGREGAR");
  }

  agregarProyeccion(){
    console.log("Agregar Proyeccion")
  }


}
