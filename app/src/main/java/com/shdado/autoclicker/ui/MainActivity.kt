package com.shdado.autoclicker.ui

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import android.widget.Toast
import com.shdado.autoclicker.R

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(android.R.layout.simple_list_item_1)
        Toast.makeText(this, getString(R.string.hello), Toast.LENGTH_LONG).show()
    }
}
