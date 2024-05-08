package com.example.uiwidgetsdemotwo;

import androidx.appcompat.app.AppCompatActivity;

import android.app.DatePickerDialog;
import android.app.TimePickerDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.TimePicker;

import java.util.Calendar;

public class DatePickerWithDialog extends AppCompatActivity {

    EditText et_date_picker,et_time_picker;
    DatePickerDialog dp_dialog;
    TimePickerDialog tp_dialog;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_date_picker_with_dialog);

        et_date_picker=(EditText)findViewById(R.id.et_date_picker);
        et_time_picker=(EditText)findViewById(R.id.et_time_picker);

        Calendar c=Calendar.getInstance();
        int m=c.get(Calendar.MONTH);
        int d=c.get(Calendar.DAY_OF_MONTH);
        int y=c.get(Calendar.YEAR);
        int h=c.get(Calendar.HOUR);
        int min=c.get(Calendar.MINUTE);
        int sec=c.get(Calendar.SECOND);

        et_date_picker.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                 dp_dialog=new DatePickerDialog(DatePickerWithDialog.this, new DatePickerDialog.OnDateSetListener() {
                    @Override
                    public void onDateSet(DatePicker datePicker, int year, int month, int day_of_month) {
                        et_date_picker.setText(day_of_month+"\\"+(month+1)+"\\"+year);
                    }
                },y,m,d);
                 dp_dialog.show();
            }
        });

        et_time_picker.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                tp_dialog= new TimePickerDialog(DatePickerWithDialog.this, new TimePickerDialog.OnTimeSetListener() {
                    @Override
                    public void onTimeSet(TimePicker timePicker, int i, int i1) {
                        et_time_picker.setText(i+":"+i1);
                    }
                },h,min,false);
                tp_dialog.show();
            }
        });
    }
}