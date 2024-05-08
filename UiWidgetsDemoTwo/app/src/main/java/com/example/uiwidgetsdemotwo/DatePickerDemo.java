package com.example.uiwidgetsdemotwo;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.DatePicker;
import android.widget.Button;
import android.widget.Toast;

public class DatePickerDemo extends AppCompatActivity {

    DatePicker dp_one;
    Button btn_get_date;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_date_picker_demo);

        dp_one=findViewById(R.id.dp_one);
        btn_get_date=findViewById(R.id.btn_get_date);
        btn_get_date.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                int month=dp_one.getMonth()+1;
                int day=dp_one.getDayOfMonth();
                int year=dp_one.getYear();
                Toast.makeText(getApplicationContext(),"Date:"+day+"\\"+month+"\\"+year,Toast.LENGTH_SHORT).show();
            }
        });


    }
}