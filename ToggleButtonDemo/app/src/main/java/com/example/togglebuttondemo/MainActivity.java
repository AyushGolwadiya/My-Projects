package com.example.togglebuttondemo;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import android.widget.ToggleButton;
import android.view.View;
import android.widget.Toast;
import android.widget.Switch;
public class MainActivity extends AppCompatActivity {
    ToggleButton tgl_wifi;
    Switch swt_wifi;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        tgl_wifi=(ToggleButton)findViewById(R.id.tgl_wifi);
        swt_wifi=(Switch)findViewById(R.id.swt_wifi);
    }

    public void onClickTglWifi(View view){
        if(tgl_wifi.isChecked()){
            Toast.makeText(this,"Wifi On",Toast.LENGTH_SHORT).show();
        }
        else {
            Toast.makeText(this,"Wifi Off",Toast.LENGTH_SHORT).show();
        }
    }

    public void onClickSwtWifi(View view){
        if(swt_wifi.isChecked()){
            Toast.makeText(this,"Wifi On",Toast.LENGTH_SHORT).show();
        }else {
            Toast.makeText(this,"Wifi Off",Toast.LENGTH_SHORT).show();
        }
    }
}