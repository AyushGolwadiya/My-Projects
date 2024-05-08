package com.example.fibonacciperfectsquare;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;


import com.google.android.material.snackbar.Snackbar;

public class MainActivity extends AppCompatActivity {
    class Numbers{
        int num;
        //Perfect Square
        public boolean isPerfectSquare(){
            double sqRoot = (int) Math.sqrt(num);
            if(sqRoot*sqRoot == num){
                return true;
            }else {
                return false;
            }
        }
        public boolean isFibonaaciNumber(){
            this.num = 5*num*num+4;
            boolean var1 = isPerfectSquare();
            this.num = 5*num*num-4;
            boolean var2 = isPerfectSquare();
            return (var1 || var2);
        }
    }
    public void OnButtonClick(View view){
         EditText editText=findViewById(R.id.editTextTextPersonName);
         Numbers numbers=new Numbers();
         String message;
         if (editText.getText().toString().isEmpty()){
             message= " enter a number";
         }
         else{
         numbers.num=Integer.parseInt(editText.getText().toString());
          message=editText.getText().toString();
         if (numbers.isFibonaaciNumber() && numbers.isPerfectSquare() ){
             message=message+" is perfect square and fibonacci";
         }
         else if (numbers.isPerfectSquare()){
             message+=" is perfect square but not fibonacci";
         }
         else if (numbers.isFibonaaciNumber()){
             message+=" is fibonaaci but not square";
         }
         else {
             message+=" neither both";
         }
        Snackbar.make(view,message,Snackbar.LENGTH_LONG).show();
    }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main_menu,menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        int id=item.getItemId();
        switch (id){
            case R.id.settings:
                Log.i("check","settings");
                Toast.makeText(getApplicationContext(),"settings clicked",Toast.LENGTH_LONG).show();
                return true;
            case R.id.help:
                Log.i("check","help");
                Toast.makeText(getApplicationContext(),"help clicked",Toast.LENGTH_LONG).show();
                return true;
            case R.id.rateus:
                Log.i("check","rate us");
                Toast.makeText(getApplicationContext(),"Rate us clicked",Toast.LENGTH_LONG).show();
                return true;
            case R.id.feedback:
                Log.i("check","feedback");
                Toast.makeText(getApplicationContext(),"feedback clicked",Toast.LENGTH_LONG).show();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }
}