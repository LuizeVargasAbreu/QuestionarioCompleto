
package dao;

import java.math.BigDecimal;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import modelo.MoniAval;

public class MoniAvalDAO {
    EntityManager em;
    
    public MoniAvalDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(MoniAval obj) throws Exception {
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

    public List<MoniAval> listar() throws Exception {
        return em.createNamedQuery("MoniAval.findAll").getResultList();
    }
    
    public List<MoniAval> listar(String idMonitor) throws Exception {
        TypedQuery<MoniAval> query =
                em.createNamedQuery("MoniAval.findById", MoniAval.class);
        
        query.setParameter("idMonitor", '%' + idMonitor +'%');
        return query.getResultList();
    } 
    
     public BigDecimal verMedia(Long idMonitor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.ma_resposta1 + p.ma_resposta2 + p.ma_resposta3 + p.ma_resposta4 + p.ma_resposta5 + "
            + "p.ma_resposta6 + p.ma_resposta7 + p.ma_resposta8 + p.ma_resposta9 + p.ma_resposta10) / 10), 2) media " +
"FROM moni_aval p where p.id_monitor = " + idMonitor + "");
        BigDecimal actual =  (BigDecimal) q.getSingleResult();
        return actual;
        
    }
    
    public BigDecimal verMedia1 (Long idMonitor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.ma_resposta1) ),2) FROM moni_aval p where p.id_monitor = " + idMonitor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    public BigDecimal verMedia2 (Long idMonitor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.ma_resposta2) ),2) FROM moni_aval p where p.id_monitor = " + idMonitor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    public BigDecimal verMedia3 (Long idMonitor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.ma_resposta3) ),2) FROM moni_aval p where p.id_monitor = " + idMonitor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    public BigDecimal verMedia4 (Long idMonitor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.ma_resposta4) ),2) FROM moni_aval p where p.id_monitor = " + idMonitor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    
    public BigDecimal verMedia5 (Long idMonitor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.ma_resposta5) ),2) FROM moni_aval p where p.id_monitor = " + idMonitor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    
    public BigDecimal verMedia6 (Long idMonitor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.ma_resposta6) ),2) FROM moni_aval p where p.id_monitor = " + idMonitor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    
    public BigDecimal verMedia7 (Long idMonitor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.ma_resposta7) ),2) FROM moni_aval p where p.id_monitor = " + idMonitor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    
    public BigDecimal verMedia8 (Long idMonitor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.ma_resposta8) ),2) FROM moni_aval p where p.id_monitor = " + idMonitor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    
    public BigDecimal verMedia9 (Long idMonitor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.ma_resposta9) ),2) FROM moni_aval p where p.id_monitor = " + idMonitor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    
    public BigDecimal verMedia10 (Long idMonitor) throws Exception {
        Query q = em.createNativeQuery("SELECT round(avg( (p.ma_resposta10) ),2) FROM moni_aval p where p.id_monitor = " + idMonitor + "");
        BigDecimal actual = (BigDecimal) q.getSingleResult();
        return actual;
    }
    
    public void alterar(MoniAval obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }
    
    public void excluir(MoniAval obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }
    
    public MoniAval buscarPorChavePrimaria(Long chave)
    {
        return em.find(MoniAval.class, chave);
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }
    

}
