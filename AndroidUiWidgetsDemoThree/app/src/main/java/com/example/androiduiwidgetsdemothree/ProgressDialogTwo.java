package com.example.androiduiwidgetsdemothree;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.Button;
import android.app.ProgressDialog;

public class ProgressDialogTwo extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_progress_dialog_two);
    }

    public void onClickDialogTwo(View view){
        ProgressDialog pg=new ProgressDialog(ProgressDialogTwo.this);
        pg.setTitle("Wait");
        pg.setMessage("Searching");
        pg.setIcon(R.drawable.home);
        pg.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
        pg.setCancelable(false);
        pg.show();

        Handler handler=new Handler(){
            @Override
            public void handleMessage(@NonNull Message msg) {
                super.handleMessage(msg);
                pg.incrementProgressBy(1);
            }
        };

        new Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    while (pg.getProgress()<=100){
                        Thread.sleep(10);
                        handler.sendMessage(handler.obtainMessage());
                    if (pg.getProgress()==100){
                        pg.dismiss();
                    }}

                    }
                catch (Exception e){
                    e.printStackTrace();
                    }
            }
        }).start();
    }
}