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
    private fb2: FormBuilder,
    private router:Router) 
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
    const pelicula: Object = {
      nombre_original: this.form.value.nombre_original,
      nombre: this.form.value.nombre,
      duracion: Number(this.form.value.duracion),
      imagen: this.form.value.url_imagen,
      precio_menores: 2200,
      precio_adultos: 3000,
      precio_tercera_edad: 2400
    }
    this._peliculaService.updatePelicula(pelicula).subscribe(data => {
      console.log(data);
    });
    this.router.navigate(['/home/peliculas']);
  }

  agregarPelicula(){
    if (this.form.invalid){
      return;
    }
    const pelicula: Object =
    {
      nombre_original: this.form.value.nombre_original,
      nombre: this.form.value.nombre,
      duracion: Number(this.form.value.duracion),
      imagen: this.form.value.url_imagen,
      precio_menores: 2200,
      precio_adultos: 3000,
      precio_tercera_edad: 2400
    }
    this._peliculaService.addPelicula(pelicula).subscribe(data => {
      console.log(data);
    });
    this.router.navigate(['/home/peliculas']);
  }

  agregarProyeccion(){
    if (this.form.invalid){
      return;
    }
    const proyeccion: Object =
    {
      sucursal_id: 3,
      sala_id: Number(this.form2.value.sala_id),
      nombre_pelicula: this.form2.value.nombre_pelicula,
      hora: this.form2.value.hora
    }
    this._peliculaService.addProyeccion(proyeccion).subscribe(data => {
      console.log(data);
    });
    this.router.navigate(['/home/peliculas']);
  }




}
