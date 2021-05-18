package com.speakplusplus.onlinequizwebservice.service;

import com.speakplusplus.onlinequizwebservice.model.core.ConfirmationToken;
import com.speakplusplus.onlinequizwebservice.repo.ConfirmationTokenRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class ConfirmationTokenService {

    private final ConfirmationTokenRepo tokenRepo;

    @Transactional
    public ConfirmationToken saveToken(ConfirmationToken token) {
        return tokenRepo.save(token);
    }
}
