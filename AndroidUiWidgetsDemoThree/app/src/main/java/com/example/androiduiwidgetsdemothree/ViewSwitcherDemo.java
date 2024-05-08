package com.example.androiduiwidgetsdemothree;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageSwitcher;
import android.widget.ViewSwitcher;
import android.widget.ImageView;


public class ViewSwitcherDemo extends AppCompatActivity {
    ImageSwitcher img_swtch;
    int[] images_id={R.drawable.duck,R.drawable.grid,R.drawable.mickey,R.drawable.home};
    int lenOfArrOfImgIds;
    int img_index=0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_view_switcher_demo);
        img_swtch=(ImageSwitcher)findViewById(R.id.img_swtch);
        lenOfArrOfImgIds=images_id.length;

        img_swtch.setFactory(new ViewSwitcher.ViewFactory() {
            @Override
            public View makeView() {
                ImageView imageView=new ImageView(getApplicationContext());
                imageView.setScaleType(ImageView.ScaleType.CENTER);
                return imageView;
            }
        });
        img_swtch.setImageResource(images_id[0]);


    }

    public void onClickNext(View view){
        img_index+=1;
        if (img_index==images_id.length){
            img_index=0;
        }
        img_swtch.setImageResource(images_id[img_index]);

    }
    public void onClickPrevious(View view){
        img_index-=1;
        if (img_index<0){
            img_index=images_id.length-1;
        }
        img_swtch.setImageResource(images_id[img_index]);
    }
}