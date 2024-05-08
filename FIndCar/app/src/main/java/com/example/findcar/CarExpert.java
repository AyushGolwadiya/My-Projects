package com.example.findcar;

import java.util.ArrayList;
import java.util.List;

public class CarExpert {
    List<String> getbrands(String type){
        List<String> brands=new ArrayList<String>();


        if (type.equals("Sedan")){
            brands.add("Hyundai Verna");
            brands.add("Bently Flying Spur");
            brands.add("BMW 2 series");
            brands.add("BMW 3 series");
            brands.add("Audi A8 L");
            brands.add("Mercedes C benz");
            brands.add("Nissan Versa");
            brands.add("Nissan Altima");
            brands.add("Toyota Avalon");
            brands.add("Toyota Corolla");
            brands.add("Maruti Dzire");
            brands.add("Porsche Panamera");
        }
        else if (type.equals("CUV")){
            brands.add("TATA Nexon");
            brands.add("Maruti Suzuki Gypsy King");
            brands.add("Mitsubishi ");
            brands.add("Porsche Cajun");
            brands.add("Porsche Katana");
            brands.add("BMW CUV F25");
            brands.add("Nissan");



        }
        else if (type.equals("Coupe")){
            brands.add("Ford Mustang");
            brands.add("Chevrolet Corvette");
            brands.add("Audi A5");
            brands.add("Hyundai Verna");
            brands.add("Porsche Boxter");
            brands.add("Lamborghini Aventador");
            brands.add("Ferrari Roma");
            brands.add("Jaguar F-TYPE");
            brands.add("Porsche 911");
        }
        else if (type.equals("SUV")){
            brands.add("Maruti Suzuki S-Presso");
            brands.add("Tata Punch");
            brands.add("Mahindra KUV100 NXT");
            brands.add("Hyundai Venue");
            brands.add("Mahindra Bolero ");
            brands.add("KIA Seltos");
            brands.add("Nissan Ariya");
            brands.add("KIA Signature");
            brands.add("KIA Hybrid");
            brands.add("Audi Electric Q8");
        }
        else if (type.equals("RoadSter")) {
            brands.add("Ferrari 250 MM ");
            brands.add("Chevrolet Corvette Sting Ray");
            brands.add("Mercedes Benz 300SL");
            brands.add("Triumph Spitfire");
            brands.add("Porsche 550 Spyder ");
            brands.add("PAGANI Zonda");
            brands.add("Ford MODEL A");
            brands.add("Morgan Roadster");
            brands.add("Tesla Roadster");
        }
        else if (type.equals("HatchBack")){
            brands.add("Ford Focus");
            brands.add("Ford Mini");
            brands.add("Volkswagen Golf");
            brands.add("Volkswagen Polo GTI");
            brands.add("Hyundai Grand i10");
            brands.add("Renault KWID");
            brands.add("Tata Tiago");
            brands.add("Maruti Baleno");
            brands.add("Maruti Suzuki Swift ");

        }
        else {
            brands.add("McLaren F1");
            brands.add("BMW V-12");
            brands.add("Ferrari LaFerrari");
            brands.add("Porsche 918 Spyder");
            brands.add("Koenigsegg Regera");
            brands.add("Lamborghini Huracán");
            brands.add("Pagani Huayra");
            brands.add("Ruf CTR 30th Anniversary Edition");

        }

        return brands;
    }
}
