package com.mmontes.model.util;

import com.mmontes.util.exception.InstanceNotFoundException;

import java.io.Serializable;

public interface GenericDao <E, PK extends Serializable>{

	void save(E entity);

	E findById(PK id) throws InstanceNotFoundException;

	boolean exists(PK id);

	void remove(PK id) throws InstanceNotFoundException;

}
