package vn.project.laptopshop.service.Specification;

import jakarta.persistence.criteria.Predicate;
import org.springframework.data.jpa.domain.Specification;
import vn.project.laptopshop.domain.DTO.FilterDTO;
import vn.project.laptopshop.domain.Product;
import vn.project.laptopshop.domain.Product_;

import java.util.ArrayList;
import java.util.List;

public class ProductSpecification {
    public static Specification<Product> queryByName(String name){
        return (root, query, criteriaBuilder)
                -> criteriaBuilder.like(root.get(Product_.NAMEPRODUCT), "%"+name+"%");
    }
    public static Specification<Product> queryByFilter(FilterDTO filterDTO){
        return (root, query, criteriaBuilder) -> {
            List<String> factoryList;
            List<String> targetList;
            Double low = filterDTO.getLow().map(Double::parseDouble).orElse(0.0);
            Double high = filterDTO.getHigh().map(Double::parseDouble).orElse(0.0);
            if(filterDTO.getTargetList().isPresent()){
                targetList = filterDTO.getTargetList().get();
            }else {
                targetList = new ArrayList<>();
            }
            if(filterDTO.getFactoryList().isPresent()){
                factoryList = filterDTO.getFactoryList().get();
            }else {
                factoryList = new ArrayList<>();
            }
                List<Predicate> predicates = new ArrayList<>();
                if(low != 0.0 && high != 0.0){
                    predicates.add(criteriaBuilder.between(root.get(Product_.PRICE), low, high));
                } else if (low != 0.0 ) {
                    predicates.add(criteriaBuilder.ge(root.get(Product_.PRICE), low));
                } else if (high != 0.0 ) {
                    predicates.add(criteriaBuilder.le(root.get(Product_.PRICE), high));
                }
                if(factoryList != null && !factoryList.isEmpty()){
                    predicates.add(criteriaBuilder.in(root.get(Product_.FACTORY)).value(factoryList));
                }
                if(targetList != null && !targetList.isEmpty()){
                    predicates.add(criteriaBuilder.in(root.get(Product_.TARGET)).value(targetList));
                }
                return criteriaBuilder.and(predicates.toArray(new Predicate[predicates.size()]));
        };
    }
    public static Specification<Product> queryByPrice(double low,double high){
        return ((root, query, criteriaBuilder) -> criteriaBuilder.between(root.get(Product_.PRICE), low, high));
    }
    public static Specification<Product> queryByLowPrice(double low){
        return ((root, query, criteriaBuilder) -> criteriaBuilder.ge(root.get(Product_.PRICE), low));
    }
    public static Specification<Product> queryByHighPrice(double high){
        return ((root, query, criteriaBuilder) -> criteriaBuilder.le(root.get(Product_.PRICE), high));
    }
    public static Specification<Product> queryByTarget(List<String> target){
        return ((root, query, criteriaBuilder) -> criteriaBuilder.in(root.get(Product_.TARGET)).value(target));
    }
    public static Specification<Product> queryByFactory(List<String> factory){
        return ((root, query, criteriaBuilder) -> criteriaBuilder.in(root.get(Product_.FACTORY)).value(factory));
    }
}
