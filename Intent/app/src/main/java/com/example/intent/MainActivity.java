package com.example.intent;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ComponentActivity;
import static android.provider.AlarmClock.EXTRA_MESSAGE;
import android.content.Intent;
import android.view.View;
import android.app.Activity;
import android.os.Bundle;
import android.widget.EditText;


public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    public void  onSendMessage(View view){
        EditText editText = (EditText)findViewById(R.id.message);
        String  messageText = editText.getText().toString();
//        Intent intent=new Intent(this,ReceiveMesaageActivity.class);
//        intent.putExtra(ReceiveMesaageActivity.EXTRA_MESSAGE,messageText);
        Intent intent = new Intent(Intent.ACTION_SEND);
        intent.setType("text/plain");
        intent.putExtra(Intent.EXTRA_TEXT,messageText );
        String chooserTitle= getString(R.string.chooser);
        Intent chosenIntent=Intent.createChooser(intent,chooserTitle);
        startActivity(chosenIntent);

    }
}