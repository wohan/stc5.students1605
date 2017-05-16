package main.model.entity;

import com.sun.javafx.geom.transform.Identity;

import javax.persistence.*;
import java.io.Serializable;

/**
 *
 */
@Entity
@Table(name = "student")
@NamedQueries({
        @NamedQuery(name="Student.findAll", query="select c from Student c"),
        @NamedQuery(name="Student.findById",
                query="select distinct c from Student c where c.id = :id"),
/*        @NamedQuery(name="Student.findAllWithDetail",
                query="select distinct c from Student c left join fetch c.studentTelDetails t left join fetch c.hobbies h")*/
})
@SqlResultSetMapping(
        name="studentResult",
        entities=@EntityResult(entityClass=Student.class)
)

public class Student implements Serializable {

    private long id;
    private String name;
    private int age;
    private User user;
    private Group group;

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @OneToOne
    @JoinColumn(name = "user_st_id")
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "age")
    public int getAge() {
        return age;
    }

    @ManyToOne
    @JoinColumn(name = "group_id")
    public Group getGroup() {
        return group;
    }

    public void setGroup(Group group) {
        this.group = group;
    }

    public void setAge(int age) {
        this.age = age;
    }


}
