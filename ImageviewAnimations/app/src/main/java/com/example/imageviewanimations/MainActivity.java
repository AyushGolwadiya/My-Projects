package com.example.imageviewanimations;

import androidx.appcompat.app.AppCompatActivity;

import android.media.Image;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

public class MainActivity extends AppCompatActivity {
    boolean donaldImageIsShowing=true;

    public void onClickImage(View view){
        ImageView donaldImageView=findViewById(R.id.donald);
        ImageView mickeyImageView=findViewById(R.id.mickey);
        /*if (donaldImageIsShowing){
            donaldImageIsShowing=false;
            donaldImageView.animate().alpha(0).setDuration(2000);
            mickeyImageView.animate().alpha(1).setDuration(2000);

        }else{
            donaldImageIsShowing=true;
            donaldImageView.animate().alpha(1).setDuration(2000);
            mickeyImageView.animate().alpha(0).setDuration(2000);
        }*/
//        donaldImageView.animate().scaleX(0.5f).scaleY(0.5f).setDuration(2000);


    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ImageView donaldView=findViewById(R.id.donald);
        donaldView.setX(-2000);
        donaldView.animate().translationXBy(2000).rotation(360).setDuration(2000);
    }
}