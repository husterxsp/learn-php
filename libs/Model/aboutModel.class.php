<?php

class aboutModel {
    function aboutInfo() {
        return file_get_contents('data/about.txt');
    }
}
