package com.example.uiwidgetsform;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.CheckBox;
import android.widget.RadioButton;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    EditText et_name,et_password,et_phone;
    RadioButton rb_male,rb_female,rb_confidential;
    CheckBox cb_c,cb_python,cb_java,cb_dbms,cb_dsa;
    Spinner spn_select;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        et_name=(EditText)findViewById(R.id.et_name);
        et_password=(EditText)findViewById(R.id.et_phone);
        et_phone=(EditText)findViewById(R.id.et_password);

        rb_male=(RadioButton)findViewById(R.id.rb_male);
        rb_female=(RadioButton)findViewById(R.id.rb_female);
        rb_confidential=(RadioButton)findViewById(R.id.rb_confidential);

        cb_c=(CheckBox)findViewById(R.id.cb_c);
        cb_java=(CheckBox)findViewById(R.id.cb_java);
        cb_python=(CheckBox)findViewById(R.id.cb_python);
        cb_dbms=(CheckBox)findViewById(R.id.cb_dbms);
        cb_dsa=(CheckBox)findViewById(R.id.cb_dsa);

        spn_select=(Spinner)findViewById(R.id.spn_select);
    }
    public void getValues(View view){

        //========== getting values from EditText =============
        String name=et_name.getText().toString();
        String phone=et_phone.getText().toString();
        String password=et_password.getText().toString();

        //========== getting values from RadioButtons =============
        String gender;
        if(rb_male.isChecked()){
            gender=rb_male.getText().toString();
        } else if (rb_female.isChecked()) {
            gender=rb_female.getText().toString();
        }
        else if(rb_confidential.isChecked()){
            gender=rb_confidential.getText().toString();
        }
        else{
            gender=null;
        }

        //========== getting values from CheckBox =============
        String language="";
        if(cb_c.isChecked()){
            language+=cb_c.getText().toString()+"\n";
        }
        if(cb_java.isChecked()){
            language +=cb_java.getText().toString()+"\n";
        }
        if(cb_python.isChecked()){
            language +=cb_python.getText().toString()+"\n";
        }
        if(cb_dbms.isChecked()){
            language +=cb_dbms.getText().toString()+"\n";
        }
        if(cb_dsa.isChecked()){
            language +=cb_dsa.getText().toString()+"\n";
        }

        //========== getting values from CheckBox =============
        String interest=spn_select.getSelectedItem().toString();


        //printing values
        String res=name+" "+phone+" "+password+" "+gender+" "+language+" "+interest;
        Toast.makeText(this,res,Toast.LENGTH_LONG).show();



        }
    }
