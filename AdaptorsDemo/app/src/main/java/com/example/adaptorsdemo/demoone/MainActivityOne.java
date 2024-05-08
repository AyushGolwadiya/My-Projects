package com.example.adaptorsdemo.demoone;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import com.example.adaptorsdemo.R;
import android.widget.GridView;


public class MainActivityOne extends AppCompatActivity {
    GridView grid_view_one;
    int[] arrImg={R.drawable.cart,R.drawable.firstcar,R.drawable.logo,R.drawable.phil,R.drawable.sunago,R.drawable.star};
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_main_one);
        grid_view_one=(GridView) findViewById(R.id.grid_view_one);

    }
}