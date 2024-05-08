package com.example.intent;

import static android.provider.AlarmClock.EXTRA_MESSAGE;

import androidx.appcompat.app.AppCompatActivity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

public class ReceiveMesaageActivity extends AppCompatActivity {
    public static final String EXTRA_MESSAGE="message";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_receive_mesaage);
        Intent intent=getIntent();
        String message=intent.getStringExtra(EXTRA_MESSAGE);
        TextView messageView=(TextView) findViewById(R.id.message);
        messageView.setText(message);
    }
}