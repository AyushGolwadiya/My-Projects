package com.example.androiduiwidgetsdemothree;

import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class ProgressDialogOne extends AppCompatActivity {
    Button btn_dial;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.progress_dialog_one);
        btn_dial=(Button)findViewById(R.id.btn_dialog);
    }
    public void onClickDialog(View view){
        ProgressDialog progressDialog=new ProgressDialog(ProgressDialogOne.this);
        progressDialog.setTitle("DialogBox");
        progressDialog.setMessage("Hello");
        progressDialog.setIcon(R.drawable.home);
        progressDialog.show();
        progressDialog.setCancelable(false);

        //Thread t= new Thread(new Runnable() {

        new Thread(new Runnable() {

            @Override
            public void run() {
                try
                {
                Thread.sleep(2000);
                progressDialog.dismiss();
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }

            }
        }).start();

    }
 }
