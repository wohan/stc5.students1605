package main.model.dao.impl;

import main.model.dao.StudentDAO;
import main.model.entity.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Collection;
import java.util.List;


/**
 *
 */
@Repository
@Transactional
public class StudentDAOImpl implements StudentDAO {

    @PersistenceContext
    private EntityManager em;

    @Override
    public Collection<Student> getAll() {

        List<Student> students = em.createNamedQuery("Student.findAll", Student.class).getResultList();

        return students;
    }


    @Override
    public Student getById(Long id) {
        Student student = em.find(Student.class, id);
        return student;
    }

    @Override
    public Long insert(Student entity) {
        if (entity.getId() == 0) {
            em.persist(entity);
        } else {
            em.merge(entity);
        }
        return entity.getId();
    }

    @Override
    public void update(Student entity) {
    }

    @Override
    public void delete(Student entity) {
    }


    @Override
    public String getStudentLogin(Student student) {
        String login = null;

        return login;
    }
}
