package com.example.uiwidgetsdemotwo;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.app.Dialog;
import android.widget.Toast;

public class CustomAlertDialogDemo extends AppCompatActivity {
    Button btn_custom_alert_dialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_custom_alert_dialog_demo);
        btn_custom_alert_dialog=(Button)findViewById(R.id.btn_custom_alert_dialog);
        btn_custom_alert_dialog.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Dialog dialog=new Dialog(CustomAlertDialogDemo.this);
                dialog.setContentView(R.layout.custom_alert_dialog);
                Button yes_custom=(Button) dialog.findViewById(R.id.btn_custom_yes);
                Button  no_custom=(Button) dialog.findViewById(R.id.btn_custom_no);
                dialog.show();
                yes_custom.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        Toast.makeText(getApplicationContext(),"Yes Custom Clicked",Toast.LENGTH_SHORT).show();
                    }
                });
                no_custom.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        Toast.makeText(getApplicationContext(),"No custom Clicked",Toast.LENGTH_SHORT).show();
                    }
                });
            }
        });
    }
}