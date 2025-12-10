package br.com.msp.hardwareassistant.infra.controllers;

import br.com.msp.hardwareassistant.infra.services.HardwareAssistantAiService;
import dev.langchain4j.service.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/assistant")
public class HardwareAssistantAiController {
    private final HardwareAssistantAiService hardwareAssistantAiService;

    public HardwareAssistantAiController(HardwareAssistantAiService hardwareAssistantAiService) {
        this.hardwareAssistantAiService = hardwareAssistantAiService;
    }

    @PostMapping("/ask")
    public Result<String> ask(@RequestBody String message) {
        log.info("Asked: {}", message);
        return hardwareAssistantAiService.processMessage(message);
    }
}
