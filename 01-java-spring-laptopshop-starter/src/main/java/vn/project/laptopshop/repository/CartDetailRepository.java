package vn.project.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.project.laptopshop.domain.CartDetail;

import java.util.List;

@Repository
public interface CartDetailRepository extends JpaRepository<CartDetail, Long> {
    CartDetail save(CartDetail cartDetail);
    List<CartDetail> findByCartId(long cartId);
    boolean existsByCartIdAndProductId(long cartId, long productId);
    CartDetail findByCartIdAndProductId(long cartId, long productId);
    CartDetail deleteById(long cartDetailId);
}
