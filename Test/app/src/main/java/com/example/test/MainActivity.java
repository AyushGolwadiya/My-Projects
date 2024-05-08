package com.example.test;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.text.TextUtils;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    public void onClickButton(){
        EditText txt=findViewById(R.id.name);
        String name=txt.getText().toString();

        EditText pwd=findViewById(R.id.password);
        String password=pwd.getText().toString();

        try {
            if (TextUtils.isEmpty(name)){
                Toast.makeText(MainActivity.this,"Enter Username",Toast.LENGTH_SHORT).show();
            }
            else if (TextUtils.isEmpty(password)){
                Toast.makeText(MainActivity.this,"Enter Password",Toast.LENGTH_SHORT).show();
            }
            else{
                ConnectDatabase c=new ConnectDatabase();
                String query="insert into signuptest('"+name+"','"+password+"')";
                c.s.executeUpdate(query);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}