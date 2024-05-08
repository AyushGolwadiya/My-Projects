package com.example.uiwidgetsdemotwo;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.SeekBar;
import android.widget.TextView;

public class SeekBarDemo extends AppCompatActivity {
    SeekBar sb_sbd;
    TextView tv_sb_val;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_seek_bar_demo);
        sb_sbd=(SeekBar) findViewById(R.id.sb_sbd);
        tv_sb_val=(TextView) findViewById(R.id.tv_sb_val);

        sb_sbd.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            int val;
            @Override
            public void onProgressChanged(SeekBar seekBar, int i, boolean b) {
                val=i;
                tv_sb_val.setText(""+val);
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {
                //tv_sb_val.setText(String.valueOf(val));
            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {
               // tv_sb_val.setText(val+"");
            }
        });
    }
}