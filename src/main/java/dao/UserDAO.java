package dao;

import entity.UserEntity;
import util.PersistenceUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.Collection;
import java.util.List;

public class UserDAO {
    EntityManager em;
    EntityTransaction tran;
    public UserDAO(){
        em = PersistenceUtil.getEntityManagerFactory().createEntityManager();
        tran = em.getTransaction();
    }
    //ok
    public void insertUser(UserEntity user){
        try{
            tran.begin();
            em.persist(user);

            tran.commit();
        }catch (Exception e){
            System.out.println(e.getMessage());
            tran.rollback();
        }
    }
    //ok
    public void removeUser(int id){
        try{
            tran.begin();
            UserEntity user = em.find(UserEntity.class,id);
            em.remove(user);
            tran.commit();
        }catch (Exception e){
            System.out.println(e.getMessage());
            tran.rollback();
        }
    }
    //ok
    public UserEntity findbyId(int id){
        return em.find(UserEntity.class,id);
    }

    public void updateUser(UserEntity user){
        try{
            tran.begin();
            //em.find(UserEntity.class, user.getId());
            em.merge(user);
            tran.commit();
        }catch (Exception e){
            System.out.println(e.getMessage());
            tran.rollback();
        }
    }
    // all
    public List<UserEntity> findAllUser() {
        Query query = em.createQuery("SELECT e FROM UserEntity e");
        return (List<UserEntity>) query.getResultList();
    }

    public List<UserEntity> findage(int age) {
        Query query = em.createQuery("SELECT e FROM UserEntity e WHERE e.age > :number", UserEntity.class);
        return query.setParameter("number",age).getResultList();
    }


}
