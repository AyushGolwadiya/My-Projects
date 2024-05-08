package com.example.androiduiwidgets;

import androidx.appcompat.app.AppCompatActivity;

import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.os.Bundle;
import android.widget.Toast;
import android.widget.EditText;
import android.widget.Button;
import android.widget.TextView;
public class MainActivity3 extends AppCompatActivity {
    EditText et_my_phone;
    TextView tv_my_phone;

    Button btn_my;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main3);
        et_my_phone=(EditText)findViewById(R.id.et_phone);
        btn_my=(Button)findViewById(R.id.btn_ct_toast);

    }

    public void openCustomToast(View view){
        LayoutInflater lf=getLayoutInflater();
        View viewLayout=lf.inflate(R.layout.layout_custom_toast,findViewById(R.id.ct_design));
        tv_my_phone=(TextView)viewLayout.findViewById(R.id.tv_phone);

        String phone=et_my_phone.getText().toString();
        tv_my_phone.setText(phone);

        Toast t=new Toast(getApplicationContext());
        t.setView(viewLayout);
       // t.setGravity(Gravity.CENTER,0,0);
        t.setDuration(Toast.LENGTH_SHORT);
        t.show();
    }
}