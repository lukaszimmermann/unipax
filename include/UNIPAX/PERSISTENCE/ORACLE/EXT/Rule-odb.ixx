// This file was generated by ODB, object-relational mapping (ORM)
// compiler for C++.
//

// Begin prologue.
//
//
// End prologue.

namespace odb
{
  // Rule
  //

  inline
  access::object_traits< ::UniPAX::Rule >::id_type
  access::object_traits< ::UniPAX::Rule >::
  id (const object_type& obj)
  {
    return object_traits< ::UniPAX::UPBase >::id (obj);
  }

  inline
  access::object_traits< ::UniPAX::Rule >::id_type
  access::object_traits< ::UniPAX::Rule >::
  id (const image_type& i)
  {
    return object_traits< ::UniPAX::UPBase >::id (i);
  }

  inline
  void access::object_traits< ::UniPAX::Rule >::
  bind (oracle::bind* b, id_image_type& i)
  {
    object_traits< ::UniPAX::UPBase >::bind (b, i);
  }

  inline
  void access::object_traits< ::UniPAX::Rule >::
  init (id_image_type& i, const id_type& id)
  {
    object_traits< ::UniPAX::UPBase >::init (i, id);
  }

  inline
  void access::object_traits< ::UniPAX::Rule >::
  erase (database& db, const object_type& obj)
  {
    erase (db, id (obj));
  }

  inline
  void access::object_traits< ::UniPAX::Rule >::
  callback (database& db, object_type& x, callback_event e)
  {
    ODB_POTENTIALLY_UNUSED (db);
    ODB_POTENTIALLY_UNUSED (x);
    ODB_POTENTIALLY_UNUSED (e);

    static_cast< ::UniPAX::Rule& > (x).init (e, db);
  }

  inline
  void access::object_traits< ::UniPAX::Rule >::
  callback (database& db, const object_type& x, callback_event e)
  {
    ODB_POTENTIALLY_UNUSED (db);
    ODB_POTENTIALLY_UNUSED (x);
    ODB_POTENTIALLY_UNUSED (e);
  }

  inline
  access::object_traits< ::UniPAX::Rule >::query_type::
  query_type ()
  {
  }

  inline
  access::object_traits< ::UniPAX::Rule >::query_type::
  query_type (bool v)
    : query_base_type (v)
  {
  }

  inline
  access::object_traits< ::UniPAX::Rule >::query_type::
  query_type (const char* q)
    : query_base_type (q)
  {
  }

  inline
  access::object_traits< ::UniPAX::Rule >::query_type::
  query_type (const std::string& q)
    : query_base_type (q)
  {
  }

  inline
  access::object_traits< ::UniPAX::Rule >::query_type::
  query_type (const query_base_type& q)
    : query_base_type (q)
  {
  }

  inline
  void access::object_traits< ::UniPAX::Rule >::
  load_ (oracle::object_statements< object_type >&, object_type&)
  {
  }
}

// Begin epilogue.
//
//
// End epilogue.
