package com.aryana_landscaping.controllers;


import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

//@ControllerAdvice annotation handles the all controllers exception
@ControllerAdvice
public class ErrorController{

    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(NullPointerException.class) //generalize exception handling
    public String TwoExceptions() {
        return "error";
    }

    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(value = NumberFormatException.class) //generalize exception handling
    public String numberFormateException() {
        return "exceptionHandler";
    }

    @ResponseStatus(value = HttpStatus.NOT_FOUND)
    @ExceptionHandler(Exception.class) //generalize exception handling
    public String generalizeException() {
        return "exceptionHandler";
    }
}