package main.model.dao;

import main.model.entity.Student;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Artem Panasyuk on 16.05.2017.
 */

@Repository
public interface StudentRepo extends CrudRepository<Student,Long>{
}
