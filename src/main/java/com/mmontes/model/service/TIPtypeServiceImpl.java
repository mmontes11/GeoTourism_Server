package com.mmontes.model.service;


import com.mmontes.model.dao.OSMTypeDao;
import com.mmontes.model.dao.TIPtypeDao;
import com.mmontes.model.entity.OSM.OSMType;
import com.mmontes.model.entity.TIP.TIPtype;
import com.mmontes.util.dto.DtoService;
import com.mmontes.util.dto.OSMTypeDto;
import com.mmontes.util.dto.TIPtypeDto;
import com.mmontes.util.dto.TIPtypeOSMDto;
import com.mmontes.util.exception.DuplicateInstanceException;
import com.mmontes.util.exception.InstanceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;

@Service("TIPtypeService")
@Transactional
public class TIPtypeServiceImpl implements TIPtypeService {

    @Autowired
    private TIPtypeDao tipTypeDao;

    @Autowired
    private OSMTypeDao osmTypeDao;

    @Autowired
    private DtoService dtoService;

    private void setTIPtype(Collection<OSMType> osmTypes, TIPtype tipType){
        for (OSMType osmType : osmTypes){
            osmType.setTipType(tipType);
            osmTypeDao.merge(osmType);
        }
    }

    @Override
    public List<TIPtype> findAllTypes() {
        return tipTypeDao.findAll();
    }

    @Override
    public TIPtypeDto findById(Long TIPtypeId) throws InstanceNotFoundException {
        TIPtype tipType = tipTypeDao.findById(TIPtypeId);
        return dtoService.TIPtype2TIPtypeDto(tipType);
    }

    @Override
    public String findTypeName(Long TIPtypeId) throws InstanceNotFoundException {
        return tipTypeDao.findById(TIPtypeId).getName();
    }

    @Override
    public TIPtypeDto create(String name, String icon, List<OSMType> osmTypes) throws InstanceNotFoundException {
        TIPtype tipType = new TIPtype();
        tipType.setName(name);
        tipType.setIcon(icon);
        tipTypeDao.save(tipType);
        setTIPtype(osmTypes,tipType);
        return dtoService.TIPtype2TIPtypeDto(tipType);
    }

    @Override
    public TIPtypeDto update(Long TIPtypeID, String name, String icon, List<OSMType> osmTypes) throws InstanceNotFoundException {
        TIPtype tipType = tipTypeDao.findById(TIPtypeID);
        tipType.setName(name);
        tipType.setIcon(icon);
        tipTypeDao.save(tipType);
        setTIPtype(tipType.getOsmTypes(),null);
        setTIPtype(osmTypes,tipType);
        return dtoService.TIPtype2TIPtypeDto(tipType);

    }

    @Override
    public void delete(Long TIPtypeID) throws InstanceNotFoundException {
        TIPtype tipType = tipTypeDao.findById(TIPtypeID);
        tipType.getOsmTypes().clear();
        tipTypeDao.remove(tipType.getId());
    }
}
