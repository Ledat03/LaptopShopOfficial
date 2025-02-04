package vn.project.laptopshop.controller.Admin;

import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import vn.project.laptopshop.domain.Product;
import vn.project.laptopshop.service.ProductService;
import vn.project.laptopshop.service.UploadService;

import java.util.List;

@Controller
public class ProductController {
    private final ProductService productService;
    private final UploadService uploadService;
    ProductController(ProductService productService, UploadService uploadService) {
        this.productService = productService;
        this.uploadService = uploadService;
    }
    @RequestMapping("/admin/product")
    public String GetProductPage(Model model) {
        List<Product> ProductList =  productService.getAllProducts();
        model.addAttribute("ProductList", ProductList);
        return "admin/product/InfoPage";
    }

    @RequestMapping ("admin/product/add")
    public String GetAddProductPage(Model model) {
        model.addAttribute("product",new Product());
        return "admin/product/AddProduct";
    }
    @PostMapping("/admin/product/confirmation")
    public String ConfirmProduct(@RequestParam("ProductImage")MultipartFile file, @ModelAttribute("product") Product product) {
        String Image = uploadService.handleUpload(file,"product");
        product.setImage(Image);
        productService.createProduct(product);
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/InfoProduct/{id}")
    public String InfoProduct(Model model, @PathVariable long id) {
        Product product = productService.getProduct(id);
        model.addAttribute("product", product);
        return "admin/product/InfoProduct";
    }

    @GetMapping("/admin/product/EditProduct/{id}")
    public String EditProduct(Model model, @PathVariable int id) {
        Product product = productService.getProduct(id);
        model.addAttribute("product", product);
        return "admin/product/EditProduct";
    }

    @PostMapping(value ="/admin/product/Editconfirm")
    public String UpdateProduct(@ModelAttribute("product") Product product,@RequestParam("ProductImage") MultipartFile file) {
        Product newInfo = productService.getProduct(product.getId());
        if(product != null ) {
            newInfo.setNameproduct(product.getNameproduct());
            newInfo.setPrice(product.getPrice());
            newInfo.setQuantity(product.getQuantity());
            newInfo.setDescription(product.getDescription());
            newInfo.setFactory(product.getFactory());
            newInfo.setTarget(product.getTarget());
            newInfo.setSold(product.getSold());
            newInfo.setShortdes(product.getShortdes());
            if(file.isEmpty() == false){
                uploadService.handleDelete("product", newInfo.getImage());
                String newImage = uploadService.handleUpload(file,"product");
                newInfo.setImage(newImage);
            }
            productService.createProduct(newInfo);
        }
        return "redirect:/admin/product";
    }
    @PostMapping("/admin/product/DeleteProduct/{id}")
    public String DeleteProduct(@PathVariable long id) {
        productService.deleteProduct(id);
        return "redirect:/admin/product";
    }
}
