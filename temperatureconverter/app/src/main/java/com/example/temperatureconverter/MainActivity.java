package com.example.temperatureconverter;

import androidx.appcompat.app.AppCompatActivity;
import android.*;
import android.os.Bundle;
import android.text.AlteredCharSequence;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import com.google.android.material.snackbar.Snackbar;

public class MainActivity extends AppCompatActivity {
public void onClickFahrenheit(View view) {
    EditText editText = findViewById(R.id.editTextNumber);
    String inputString = editText.getText().toString();
    Double inputByUser = Double.parseDouble(inputString);
    Double outputBySys= (inputByUser*9/5)+32;
    Snackbar.make(view," temperature in  celsius " +inputByUser+" in fahrenheit is " +outputBySys , Snackbar.LENGTH_LONG).show();
    Log.i( "value in celcius is", String.valueOf(inputByUser)+"value in fahrenheit is " + outputBySys);
}
public void onClickKelvin(View vieww){
    EditText editTextKelvin=findViewById(R.id.editTextNumber);
    String inputString=editTextKelvin.getText().toString();
    Double inByUser=Double.parseDouble(inputString);
    Double opByUser=inByUser+273;
    Snackbar.make(vieww,"temperature in celcius "+inByUser+"in kelvin is "+opByUser,Snackbar.LENGTH_LONG).show();
    Log.i("value in celcius ", String.valueOf(inByUser) +"  value in kelvin is "+ opByUser);
}
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}