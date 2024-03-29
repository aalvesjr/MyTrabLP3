package MBean;

import entidades.Produto;
import DAO.ProdutoDAO;
import java.util.*;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean
@RequestScoped
public class ProdutoMB {
    private Produto produto;
    private List<Produto> produtos;
    private String hello;

    ProdutoDAO pDAO = new ProdutoDAO();

    public ProdutoMB() {
        produto = new Produto();
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public List<Produto> getProdutos() {
        ProdutoDAO pDAO = new ProdutoDAO();
        produtos = pDAO.getProdutos();
        return produtos;
    }

    public void setProdutos(List<Produto> produtos) {
        this.produtos = produtos;
    }

    public String salvar(){
        pDAO.salvar(produto);
        produto = new Produto(); //Para resetar os valores
        return "index";
    }

    public String destroy(){
        pDAO.excluir(produto); // << Favor implemetar um destroy pelo ID rsrs

        produto = new Produto(); //Para resetar os valores
        return "index";
    }

    public String getHello() {
        hello = "<em>";
        if(produto.getId() != null)
            hello += "Editar ";
        else
            hello += "Novo ";
        hello += "</em>";
        return hello;
    }

    public void setHello(String hello) {
        this.hello = hello;
    }

}
