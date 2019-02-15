# 📱 Project/App Title
> Subtitle here

Introdution/Description of what the program does.

## ⚙️ Initial Setup

OS X & Linux:

```sh
bundle
rails s (to spin up the server)
```

## 🕹 How to Use

Describe the app's features

The app provides the following endpoints:

`POST https://my-health-tracker.herokuapp.com/api/v1/user    params: { email: 'user1email@gmail.com', password: '12345' }`

response:<br/>
`{"data"=>`<br/>
  `{"id"=>"4", "type"=>"user", "attributes"=>`<br/>
  	`{"api_key"=>"NfHnzbREj_tWkKmbdxh5Og"}`<br/>
  `}`<br/>
`}`<br/>

GET  `https://my-health-tracker.herokuapp.com/api/v1/user    params: { email: 'user1email@gmail.com', password: '12345' }`

response:<br/>
`{"data"=>`
  `{"id"=>"1", "type"=>"user", "attributes"=>` <br/>
      `{"api_key"=>"NfHnzbREj_tWkKmbdxh5Og"}` <br/>
  `}`
`}`

GET  `https://my-health-tracker.herokuapp.com/api/v1/profile params: { api_key: 'NfHnzbREj_tWkKmbdxh5Og' }`

response:<br/>
`{:data=>` <br/>
  `{:id=>"1", :type=>"profile", :attributes=>` <br/>
    `{:given_name=>"Ms. Anisa Mohr",
     :surname=>"Aristotle",
     :dob=>"1981-02-22",
     :height=>68,
     :weight=>16,
     :bp_systolic=>124,
     :bp_diastolic=>107,
     :heart_rate=>147,
     :blood_type=>"b_negative",
     :provider=>` <br/>
      `{:id=>1,
       :first_name=>"Artemis",
       :last_name=>"Vision",
       :street_address=>"150 Kecia Valley",
       :city=>"Port Tessa",
       :state=>"KY",
       :zip=>"82725",
       :phone=>"1-718-305-2952"}` <br/>
	  `}`
  `}`
 `}`

FEATURE
stuff it needs
stuff it does

FEATURE
stuff it needs
stuff it does

FEATURE
stuff it needs
stuff it does

## 🚧 Known Issues

Describe the app's known limitations/problems

FEATURE
stuff it needs
stuff it does

FEATURE
stuff it needs
stuff it does

FEATURE
stuff it needs
stuff it does

## 📊 How to Run Tests

OS X & Linux:

```sh
rspec (to run tests)
```

## 🏗 Tech Stack List

* Ruby v 2.5
* JavaScript
* HTML/CSS

## 📥 How To Contribute

1. Fork this repo
2. Create your feature branch (`git checkout -b feature/thingamajig`)
3. Commit your changes (`git commit -am 'Added a cool doodad!'`)
4. Push to the branch (`git push origin feature/thingamajig`)
5. Create a new Pull Request

## 🚀 Core Contributors

**Norm Schultz**
Twitter:[@normanrs](https://twitter.com/normanrs)
Github:[https://github.com/normanrs](https://github.com/normanrs/)
Web:[http://www.normanrschultz.com](http://www.normanrschultz.com)
