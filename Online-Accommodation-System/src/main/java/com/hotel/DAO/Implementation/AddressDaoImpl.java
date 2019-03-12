package com.hotel.DAO.Implementation;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hotel.DAO.AddressDao;
import com.hotel.model.Address;
import com.hotel.model.Hotel;

@Repository
public class AddressDaoImpl implements AddressDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void add(Address address) {
		// TODO Auto-generated method stub

	}

	@Override
	public void remove(String id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void remove(Address address) {
		// TODO Auto-generated method stub

	}

	@Override
	public Address search(Address address) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Address view(String id) {
		// TODO Auto-generated method stub

		return null;
	}

	@Override
	public List<Address> viewAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Hotel> searchByCity(String city) {
		// TODO Auto-generated method stub

		Session session = sessionFactory.getCurrentSession();

		// HQL example - Get All Employees;
		String query1 = "from Hotel h where h.add.aid in (select a.aid from Address a where city= LOWER(LTRIM(RTRIM('"
				+ city + "'))))";
		// @SuppressWarnings("unchecked")

		Query<Hotel> query = session.createQuery(query1);

		final List<Hotel> list = new LinkedList<>();
		for (final Object o : query.list()) {
			list.add((Hotel) o);
		}
		
		System.out.println("Total Number Of Records : " + list.size());

		Iterator<Hotel> itr = list.iterator();
		while (itr.hasNext()) {
			Hotel ht = (Hotel) itr.next();
			System.out.println(ht);
		}
		
		return list;
	}

}
