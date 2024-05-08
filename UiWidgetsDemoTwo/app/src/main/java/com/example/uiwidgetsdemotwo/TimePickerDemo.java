package com.example.uiwidgetsdemotwo;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.TimePicker;
import android.widget.Toast;

public class TimePickerDemo extends AppCompatActivity {
    TimePicker time_p;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_time_picker_demo);
        time_p=(TimePicker)findViewById(R.id.time_p);
        time_p.setOnTimeChangedListener(new TimePicker.OnTimeChangedListener() {
            @Override
            public void onTimeChanged(TimePicker timePicker, int hrs, int min) {
                Toast.makeText(getApplicationContext()," "+hrs+":"+min,Toast.LENGTH_SHORT).show();
            }
        });
    }
}