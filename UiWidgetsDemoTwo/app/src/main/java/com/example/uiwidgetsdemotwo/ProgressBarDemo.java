        package com.example.uiwidgetsdemotwo;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.Button;

public class ProgressBarDemo extends AppCompatActivity {
    ProgressBar pb_on_start;
    Button btn_start;
    int progressVal=0;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_progress_bar_demo);
        pb_on_start=(ProgressBar)findViewById(R.id.pb_on_st);
        btn_start=findViewById(R.id.btn_start_pb);

    }
    public void onClickStart(View view){
        btn_start.setVisibility(View.GONE);
        setProgressBarValue(progressVal);
    }
    public void setProgressBarValue(int i){
        Thread thread=new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Thread.sleep(1000);
                }catch (Exception e){
                    e.printStackTrace();
                }
                setProgressBarValue(i+1);
                pb_on_start.setProgress(i);
            }
        });
        thread.start();
    }
}