package com.example.button;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import com.google.android.material.snackbar.Snackbar;

public class MainActivity extends AppCompatActivity {
    public void OnClickButton(View view){

        EditText editTextName =findViewById(R.id.editName);
        EditText editPass =findViewById(R.id.editPassword);


//        Toast.makeText(MainActivity.this,
//                "hello "+userName+" how are you ?",
//                Toast.LENGTH_LONG).show();
        Snackbar.make( view ,"deleted ",Snackbar.LENGTH_LONG).setAction("undo", new View.OnClickListener() {
            @Override
            public void onClick(View v) {
            Snackbar.make(view ,"message restored ",Snackbar.LENGTH_LONG).show();
            }
        }).show();


    }





    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

    }
}