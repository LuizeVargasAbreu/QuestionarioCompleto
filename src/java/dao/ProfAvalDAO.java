package dao;

import java.math.BigDecimal;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import modelo.ProfAval;

/**
 *
 * @author marcelosiedler
 */
public class ProfAvalDAO {

    EntityManager em;
    
    public ProfAvalDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(ProfAval obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            //em.close();
            
        }
        
    }

    public List<ProfAval> listar() throws Exception {
        return em.createNamedQuery("ProfAval.findAll").getResultList();
    }
    
    public List<ProfAval> listar(String nome) throws Exception {
         TypedQuery<ProfAval> query = 
                 em.createNamedQuery("ProfAval.findByName", ProfAval.class);
         
         query.setParameter("nome", '%' + nome + '%');
         return query.getResultList();
    }
    
    public BigDecimal verMedia(Long idProfessor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.pa_resposta1 + p.pa_resposta2 + p.pa_resposta3 + p.pa_resposta4 + p.pa_resposta5 + "
            + "p.pa_resposta6 + p.pa_resposta7 + p.pa_resposta8 + p.pa_resposta9 + p.pa_resposta10) / 10), 2) media " +
"FROM prof_aval p where p.id_professor = " + idProfessor + "");
        BigDecimal actual =  (BigDecimal) q.getSingleResult();
        return actual;
        
    }
    
    public BigDecimal verMedia1 (Long idProfessor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.pa_resposta1) ),2) FROM prof_aval p where p.id_professor = " + idProfessor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    public BigDecimal verMedia2 (Long idProfessor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.pa_resposta2) ),2) FROM prof_aval p where p.id_professor = " + idProfessor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    public BigDecimal verMedia3 (Long idProfessor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.pa_resposta3) ),2) FROM prof_aval p where p.id_professor = " + idProfessor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    public BigDecimal verMedia4 (Long idProfessor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.pa_resposta4) ),2) FROM prof_aval p where p.id_professor = " + idProfessor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    
    public BigDecimal verMedia5 (Long idProfessor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.pa_resposta5) ),2) FROM prof_aval p where p.id_professor = " + idProfessor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    
    public BigDecimal verMedia6 (Long idProfessor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.pa_resposta6) ),2) FROM prof_aval p where p.id_professor = " + idProfessor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    
    public BigDecimal verMedia7 (Long idProfessor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.pa_resposta7) ),2) FROM prof_aval p where p.id_professor = " + idProfessor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    
    public BigDecimal verMedia8 (Long idProfessor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.pa_resposta8) ),2) FROM prof_aval p where p.id_professor = " + idProfessor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    
    public BigDecimal verMedia9 (Long idProfessor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.pa_resposta9) ),2) FROM prof_aval p where p.id_professor = " + idProfessor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    
    public BigDecimal verMedia10 (Long idProfessor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.pa_resposta10) ),2) FROM prof_aval p where p.id_professor = " + idProfessor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    
    public void alterar(ProfAval obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            // em.close();
        }
    }
    
    public void excluir(ProfAval obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            //em.close();
        }
    }
    
     public ProfAval buscarPorChavePrimaria(Long chave)
    {
        return em.find(ProfAval.class, chave);
    }
    
    public void fechaEmf() {
        em.close();
        Conexao.closeConexao();
    }
    
}
