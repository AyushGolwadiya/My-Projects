package com.example.androiduiwidgets;

import androidx.appcompat.app.AppCompatActivity;
import android.view.View;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity2 extends AppCompatActivity {
    EditText et_email;
    TextView tv_email;
    Button btn_click_email;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
        et_email=(EditText) findViewById(R.id.et_email);
        tv_email=(TextView)findViewById(R.id.tv_email);
        btn_click_email=(Button)findViewById(R.id.btn_click2);

    }
    public void getUserEmail(View view){

        String email= et_email.getText().toString();
//        tv_email.setText(email);
        Toast.makeText(getApplicationContext(),"Email :"+email ,Toast.LENGTH_LONG).show();

    }
}