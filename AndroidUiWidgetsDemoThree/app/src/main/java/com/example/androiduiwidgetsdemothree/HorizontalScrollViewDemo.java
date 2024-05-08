package com.example.androiduiwidgetsdemothree;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.ImageButton;
import android.view.View;
import android.widget.Toast;

import java.io.PrintWriter;

public class HorizontalScrollViewDemo extends AppCompatActivity {
    ImageButton img_1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_horizontal_scroll_view_demo);
        img_1=findViewById(R.id.img_1);
    }
    public void OnClickImgBtn(View view){
        Toast.makeText(getApplicationContext(), "Image Button Clicked", Toast.LENGTH_SHORT).show();
    }
}