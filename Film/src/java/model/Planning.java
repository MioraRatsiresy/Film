package model;

import javax.persistence.*;
import java.sql.Date;

/**
 *
 * @author USER
 */
@Entity
public class Planning {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    @Column
    private Integer idfilm;

    @Column
    private Date dateplanning;

    public Integer getIdfilm() {
        return idfilm;
    }

    public void setIdfilm(Integer idfilm) {
        this.idfilm = idfilm;
    }

    public Date getDate() {
        return dateplanning;
    }

    public void setDate(Date date) {
        this.dateplanning = date;
    }
}
