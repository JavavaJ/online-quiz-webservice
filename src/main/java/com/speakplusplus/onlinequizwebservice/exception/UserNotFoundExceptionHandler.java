package com.speakplusplus.onlinequizwebservice.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class UserNotFoundExceptionHandler {

    @ExceptionHandler(value = {UserNotFoundException.class})
    public ResponseEntity<Object> handleUserNotFoundException(UserNotFoundException e) {

        HttpStatus notFound = HttpStatus.NOT_FOUND;
        ApiException apiException = new ApiException(
            e.getMessage(),
            notFound
        );

        return new ResponseEntity<Object>(apiException, notFound);
    }
}
