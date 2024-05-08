package com.example.demoaudio;

import androidx.appcompat.app.AppCompatActivity;

import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {
    MediaPlayer mediaPlayer;

//    public void play(View view){
//        mediaPlayer.start();
//    }
//    public void pause(View view){
//        mediaPlayer.pause();
//    }
//     public void stop(View view){
//         mediaPlayer.stop();
//
//     }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
//        mediaPlayer=MediaPlayer.create(this,R.raw.demo);

    }

    public void onPlayWithLink(View  view){
        String url="https://www.computerhope.com/jargon/m/example.mp3";
        mediaPlayer=MediaPlayer.create(this, Uri.parse(url));
    }
}