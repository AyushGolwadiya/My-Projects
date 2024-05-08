package com.example.imageviewexample;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

public class MainActivity extends AppCompatActivity {
    public void onClickButton(View view) {
        ImageView imageView = findViewById(R.id.imageView3);
        if(imageView.getTag() != null){
          if((Integer)imageView.getTag()==R.drawable.jerry){
              imageView.setImageResource(R.drawable.tom);
              imageView.setTag(R.drawable.tom);
          }
          else{
              imageView.setImageResource(R.drawable.jerry);
              imageView.setTag(R.drawable.jerry);
          }
        }
        else{
           imageView.setImageResource(R.drawable.jerry);
           imageView.setTag(R.drawable.jerry);
        }
    }
                              @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}