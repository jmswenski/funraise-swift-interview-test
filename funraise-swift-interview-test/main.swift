/*
 *
 * main.swift
 * funraise-swift-interview-test
 *
 * Created by Jason M Swenski on 1/4/18.
 * Copyright © 2018 Funraise. All rights reserved.
 *
 *
 * For this exercise you will extend the program below to call an HTTP endpoint
 * https://funraise-interview-test.herokuapp.com/api/v1/motd this method returns json body that
 * looks like the following
 *
 * {"motd":"Hello from Funraise, here is your message of the day","time":"2018-01-03T06:49:52.399Z"}
 *
 * Your task will be to compute the MD5 digest of the response body and make sure it is the same
 * as the HTTP Response Header "X-Fun-Sig". You have been provided utility functions in funrequest.h
 * as well as funcrypto.h to help you accomplish this task without having to use third party libraries
 * though you are welcome to use any documentation, stackoverflow, google, etc.
 *
 */
import Foundation


//PART 1 - use the method in funrequest.swift to execute an HTTP GET request to
//the url https://funraise-interview-test.herokuapp.com/api/v1/motd. You will have to
//modify the doRequest function to return a structure containing the X-Fun-Sig header
//as well as the json response body


//PART 2 - use the method in funcrypto.swift to compute the MD5 of the respones body. Just take the MD5
//of the string body, don't worry about JSON deserialization into a concrete type at all. Compare the MD5
//that you compute in this part of the exercise with the MD5 you retrieved from the HTTP Header
//X-Fun-Sig, if they are the same, output a print() message stating that the request is valid

