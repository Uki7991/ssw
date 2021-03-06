@extends('layouts.app')

@section('content')

    <div class="container bg-white py-4 border shadow-sm">
        <div class="row align-items-center">
            <div class="col-3">
                <img src="{{ asset('images/profile.jpg') }}" class="img-fluid rounded-circle" alt="">
            </div>
            <div class="col text-right">
                <h2>Contacts</h2>
                <p>+996 (701) 001 052</p>
                <p>+996 (555) 105 655</p>
                <p>tilek.kubanov@gmail.com</p>
            </div>
        </div>

        <div class="row my-5 justify-content-center">
            <div class="col-8">
                <h3>
                    About this project
                </h3>
                <p>
                    Hello, I did it test project for 3 days, but it not compatible with your requirements a little bit.
                    Your requirements about adding tags was add a new tag by ",", but now in this porject you should add
                    a tag by pressing an "enter" key.
                </p>
                <h3>
                    About me
                </h3>
                <p>
                    I study in KSTU (Kyrgyz State Tech University) in 4th course in IT faculty.
                    I started practice developing web apps in 2nd course of studying. I freelanced for 1.5 - 2 years,
                    worked in Sibers company for 0.5 year. For this years I had a lot experience.
                </p>
                <p>
                    And I hope that I can work with you, because I love challenges and solve them.
                    Do mistakes but earn an experience. I have a pleasure when I solve user problems or take to user a new
                    experience that I had.
                </p>
                <p>
                    Thank you!
                </p>
                <p>
                    Best regards, Tilek!
                </p>
            </div>
        </div>
    </div>

@endsection