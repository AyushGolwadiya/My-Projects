 package com.example.androiduiwidgets;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Button;

 public class MainActivity extends AppCompatActivity {
    EditText et_my_name;
    TextView tv_my_name;
    Button btn_my_name;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        et_my_name=(EditText)findViewById(R.id.et_name);
        tv_my_name=(TextView)findViewById(R.id.tv_name);
        btn_my_name=(Button)findViewById(R.id.btn_click);

        btn_my_name.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String name=et_my_name.getText().toString();
                tv_my_name.setText("My Name :"+name);

            }
        });
    }
}