package br.com.msp.hardwareassistant.config;

import br.com.msp.hardwareassistant.infra.services.HardwareAssistantAiService;
import br.com.msp.hardwareassistant.tools.AssistantTools;
import dev.langchain4j.model.googleai.GoogleAiGeminiChatModel;
import dev.langchain4j.service.AiServices;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class HardwareAssistantAiConfig {
    @Value("${gemini.model}")
    private String model;

    @Value("${gemini.api-key}")
    private String apiKey;

    @Bean
    GoogleAiGeminiChatModel googleAiGeminiChatModel() {
        return GoogleAiGeminiChatModel.builder()
                .apiKey(apiKey)
                .modelName(model)
                .build();
    }

    @Bean
    HardwareAssistantAiService hardwareAnalystService(GoogleAiGeminiChatModel model, AssistantTools tools) {
        return AiServices.builder(HardwareAssistantAiService.class)
                .chatModel(model)
                .tools(tools)
                .build();
    }
}
