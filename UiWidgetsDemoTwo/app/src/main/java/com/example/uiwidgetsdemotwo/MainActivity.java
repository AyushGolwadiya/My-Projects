package com.example.uiwidgetsdemotwo;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.ImageButton;
import android.widget.Toast;
import android.view.View;

public class MainActivity extends AppCompatActivity {
    ImageButton img_btn_home;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        img_btn_home=(ImageButton)findViewById(R.id.img_btn_home);
    }
    public void onClickHomeIcon(View view){
        Toast.makeText(this,"ImageButton Clicked",Toast.LENGTH_SHORT).show();
    }
}