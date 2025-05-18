import { Component } from '@angular/core';
import { NavbarComponent } from '../../common/navbar/navbar.component';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-appointment-add',
  standalone: true,
  imports: [NavbarComponent, FormsModule, CommonModule],
  templateUrl: './appointment-add.component.html',
  styleUrl: './appointment-add.component.css'
})
export class AppointmentAddComponent {
   public property: any = {
    owner: "",
    ownercontact: "",
    location: "",
    district: "",
    price: "",
    type: ""
  };

  async addProperty() {
    try {
      let response = await fetch("http://localhost:8080/property/add-property", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          "owner": this.property.owner,
          "ownerContact": this.property.ownercontact,
          "location": this.property.location,
          "district": this.property.district,
          "price": this.property.price,
          "type": this.property.type
        })
      });

      if (!response.ok) {
        throw new Error('Failed to add property');
      }

      alert('Property added successfully');
      let body = await response.json();
      alert(JSON.stringify(body));
      return body;
      
    } catch (error) {
      console.error('Error:', error);
      // alert('An error occurred while adding the property.');
    }
  }

  clearFields() {
    this.property = {
      owner: "",
      ownercontact: "",
      location: "",
      district: "",
      price: "",
      type: ""
    };
  }
}
