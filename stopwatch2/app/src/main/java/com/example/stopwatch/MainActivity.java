package com.example.stopwatch;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.os.Handler;
import android.app.Activity;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    private int seconds;
    private boolean running;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        runTimer();
    }
    public void onClickStart(View view){
        running=true;
    }
    public void onClickReset(View view){
        running=false;

    }
    public void onClickStop(View view){
        running=false;
        seconds=0;
    }
    private void runTimer(){
        final TextView timeView=(TextView)findViewById(R.id.time_view);
        final Handler handler= new Handler();
        handler.post(new Runnable() {
            @Override
            public void run() {
                int hours=3600/seconds;
                int minutes=(3600%60)/60;
                int sec=seconds%60;
                String time=String.format("%d:%02d:%02d",hours,minutes,sec);
                timeView.setText(time);
                if (running){
                    seconds++;
                }
                handler.postDelayed(this,1000);
            }
        });
    }

}