package com.example.findcar;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Spinner;
import android.widget.TextView;
import java.util.List;

public class MainActivity extends AppCompatActivity {
private CarExpert carExpert=new CarExpert();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    public void onClickFindCar(View view){
        TextView brands =(TextView) findViewById(R.id.brands);
        Spinner type=(Spinner) findViewById(R.id.type);
        String carType=String.valueOf(type.getSelectedItem());
        brands.setText(carType);
        List<String> brandList=carExpert.getbrands(carType);
        StringBuilder brandsFormatted =new StringBuilder();
        for (String brand:brandList){
            brandsFormatted.append(brand).append('\n');
        }
        brands.setText(brandsFormatted);
    }
}