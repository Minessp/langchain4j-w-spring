package br.com.msp.hardwareassistant.tools;

import dev.langchain4j.agent.tool.Tool;
import dev.langchain4j.web.search.WebSearchEngine;
import dev.langchain4j.web.search.WebSearchResults;
import dev.langchain4j.web.search.google.customsearch.GoogleCustomWebSearchEngine;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class AssistantTools {
    private final WebSearchEngine webSearchEngine;

    public AssistantTools(@Value("${custom.search.json.api-key}") String apiKey,
                          @Value("${cse.id}") String cseId) {
        this.webSearchEngine = GoogleCustomWebSearchEngine.builder()
                .apiKey(apiKey)
                .csi(cseId)
                .logRequests(true)
                .build();
    }

    @Tool("Busca preço médio de hardware")
    public String searchHardwarePrice(String hardwareName) {
        log.info("Searching for hardware price: {}", hardwareName);
        String searchQuery = hardwareName + " preço";

        WebSearchResults searchResults = webSearchEngine.search(searchQuery);

        StringBuilder response = new StringBuilder();
        response.append("Encontrei os seguintes resultados online:\n");

        searchResults.results().forEach(result -> {
            response.append("- Título: ").append(result.title()).append("\n");
            response.append("- Link: ").append(result.url()).append("\n");
            response.append("- Resumo: ").append(result.content()).append("\n\n");
        });

        log.info("Search occurred good, success status");
        return response.toString();
    }
}
