package vn.project.laptopshop.domain.DTO;

import lombok.Data;

import java.util.List;
import java.util.Optional;

@Data
public class FilterDTO {
    private Optional<String> low;
    private Optional<String> high;
    private Optional<List<String>> TargetList;
    private Optional<List<String>> FactoryList;
    private Optional<String> page;
    public FilterDTO() {
        this.low = Optional.empty();
        this.high = Optional.empty();
        this.FactoryList = Optional.empty();
        this.TargetList = Optional.empty();
        this.page = Optional.empty();
    }
}
