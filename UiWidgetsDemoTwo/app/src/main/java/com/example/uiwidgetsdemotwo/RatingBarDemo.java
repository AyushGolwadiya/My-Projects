package com.example.uiwidgetsdemotwo;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RatingBar;
import android.widget.Button;
import android.widget.Toast;

public class RatingBarDemo extends AppCompatActivity {
    RatingBar my_star;
    Button btn_val;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_rating_bar_demo);
        my_star=(RatingBar)findViewById(R.id.my_star);
        btn_val=(Button)findViewById(R.id.btn_val);

        btn_val.setOnClickListener(new View.OnClickListener(){
            public void onClick(View view){
               float numOfStars=my_star.getRating();
                Toast.makeText( getApplicationContext(), "Rating :"+numOfStars, Toast.LENGTH_SHORT).show();
            }
        });
    }


}