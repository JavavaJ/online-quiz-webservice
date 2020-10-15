package com.speakplusplus.onlinequizwebservice.exception;

public class EntityNotFoundException extends RuntimeException {
    public EntityNotFoundException(Class<?> entityClass, Long entityId) {
        super("Entity " + entityClass.getSimpleName() + " with id: " + entityId + " not found");
    }
}
