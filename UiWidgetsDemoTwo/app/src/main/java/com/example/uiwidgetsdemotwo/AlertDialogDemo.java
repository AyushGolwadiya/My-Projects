package com.example.uiwidgetsdemotwo;

import androidx.appcompat.app.AppCompatActivity;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class AlertDialogDemo extends AppCompatActivity {
    Button btn_click;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_alert_dialog_demo);

        btn_click=(Button)findViewById(R.id.alert_btn_dialog);
        btn_click.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                AlertDialog.Builder alert_dialog_builder=new AlertDialog.Builder(AlertDialogDemo.this);
                alert_dialog_builder.setIcon(R.drawable.danger);
                alert_dialog_builder.setTitle("Exit ");
                alert_dialog_builder.setMessage("You Really want to Exit?");
                alert_dialog_builder.setPositiveButton("Yes", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        Toast.makeText(getApplicationContext(),"Clicked Yes",Toast.LENGTH_SHORT).show();
                    }
                });
                alert_dialog_builder.setNegativeButton("No", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        Toast.makeText(getApplicationContext(),"No clicked",Toast.LENGTH_SHORT).show();
                    }
                });
                alert_dialog_builder.setNeutralButton("Cancel", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        Toast.makeText(getApplicationContext(),"Cancelled",Toast.LENGTH_SHORT).show();
                    }
                });
                alert_dialog_builder.show();
            }
        });
    }
}