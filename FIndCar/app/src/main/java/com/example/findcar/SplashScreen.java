package com.example.findcar;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class SplashScreen extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
       {setContentView(R.layout.activity_splash_screen);

            Thread thread= new Thread(){
                public void run(){
                    try {
                        sleep(1000000);
                    }
                    catch (Exception e){
                        e.printStackTrace();
                    }
                    finally {
                        Intent intent=new Intent(SplashScreen.this, MainActivity.class);
                        startActivity(intent);
                    }
                }
            };thread.start();
        }
        Button getStartedButton = findViewById(R.id.get_started);
        getStartedButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(SplashScreen.this, MainActivity.class);

                startActivity(intent);
                finish();
           // Handle the button click event
            }
        });

    }
    }
