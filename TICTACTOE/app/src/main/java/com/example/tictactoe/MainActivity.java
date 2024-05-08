package com.example.tictactoe;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
int active=0;
int gamestate[]={2,2,2,2,2,2,2,2,2};
int [][] winningposition={{0,1,2},{3,4,5},{6,7,8},{0,3,6},{1,4,7},{2,5,8},{0,4,8},{2,4,6}};
public static int count=0;
boolean gameActive=true;
    public void onImageClick(View view) {



        ImageView imageView=(ImageView)view;
        imageView.setTranslationY(-1000);
        int imagetapped= Integer.parseInt(imageView.getTag().toString());

        if (gamestate[imagetapped]==2 && gameActive){
            count++;
            if (count==9){
                gameActive=false;

            }
            gamestate[imagetapped]=active;
        if (active==0){
            imageView.setImageResource(R.drawable.o);
            active=1;
            TextView status=findViewById(R.id.textView2);
            status.setText("x's turn");        }
        else
        {
            imageView.setImageResource(R.drawable.cross);
            active=0;
            TextView status=findViewById(R.id.textView2);
            status.setText("0's turn");
        }
        imageView.animate().translationYBy(1000).setDuration(200);

        int draw=1;
            for (int[] winningpos:winningposition) {
                if (gamestate[winningpos[0]]==gamestate[winningpos[1]] && gamestate[winningpos[1]]==gamestate[winningpos[2]] &&
                        gamestate[winningpos[0]] !=2 ){
                    draw=1;
                    String winner;
                    if (gamestate[winningpos[0]]== 0){
                       winner ="o has won";
                    }
                    else{
                        winner="x has won";
                    }
                    TextView status=findViewById(R.id.textView2);
                    status.setText(winner);

                    Button playAgainButton=findViewById(R.id.button);
                    playAgainButton.setVisibility(View.VISIBLE);
                }
            }
            if (count==9 && draw==1){
                 TextView status=findViewById(R.id.textView2);
                 status.setText("Draw");
                Button playAgainButton=findViewById(R.id.button);
                playAgainButton.setVisibility(View.VISIBLE);
                status.setText("0's turn");
            }
    }
    }
    public void playAgain(View view){
        Button playAgainbutton=findViewById(R.id.button);
        playAgainbutton.setVisibility(View.INVISIBLE);

        TextView status=findViewById(R.id.textView2);
        status.setText("0's turn");

        for (int i=0;i< gamestate.length;i++){
            gamestate[i]=2;

        }
        ((ImageView)findViewById(R.id.imageView0)).setImageDrawable(null);
        ((ImageView)findViewById(R.id.imageView1)).setImageDrawable(null);
        ((ImageView)findViewById(R.id.imageView2)).setImageDrawable(null);
        ((ImageView)findViewById(R.id.imageView3)).setImageDrawable(null);
        ((ImageView)findViewById(R.id.imageView4)).setImageDrawable(null);
        ((ImageView)findViewById(R.id.imageView5)).setImageDrawable(null);
        ((ImageView)findViewById(R.id.imageView6)).setImageDrawable(null);
        ((ImageView)findViewById(R.id.imageView7)).setImageDrawable(null);
        ((ImageView)findViewById(R.id.imageView8)).setImageDrawable(null);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Button playagainbutton=findViewById(R.id.button);
        playagainbutton.setVisibility(View.INVISIBLE);
    }
}