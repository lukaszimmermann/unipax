// This file was generated by ODB, object-relational mapping (ORM)
// compiler for C++.
//

#include <odb/pre.hxx>

// Begin prologue.
//
//
// End prologue.

#include <UNIPAX/PERSISTENCE/ORACLE/BIOPAX/TemplateReactionRegulation-odb.hxx>

#include <cassert>
#include <cstring> // std::memcpy

#include <odb/cache-traits.hxx>
#include <odb/details/shared-ptr.hxx>

#include <odb/oracle/binding.hxx>
#include <odb/oracle/traits.hxx>
#include <odb/oracle/database.hxx>
#include <odb/oracle/transaction.hxx>
#include <odb/oracle/connection.hxx>
#include <odb/oracle/statement.hxx>
#include <odb/oracle/statement-cache.hxx>
#include <odb/oracle/object-statements.hxx>
#include <odb/oracle/container-statements.hxx>
#include <odb/oracle/exceptions.hxx>
#include <odb/oracle/result.hxx>

namespace odb
{
  // TemplateReactionRegulation
  //

  // comments
  //

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::comments_traits::select_all_statement[] =
  "SELECT "
  "\"TemplateReactionRegulation_comments\".\"index\","
  "\"TemplateReactionRegulation_comments\".\"value\""
  " FROM \"TemplateReactionRegulation_comments\" WHERE \"TemplateReactionRegulation_comments\".\"object_id\"=:1"
  " ORDER BY \"TemplateReactionRegulation_comments\".\"index\""
  ;

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::comments_traits::insert_one_statement[] =
  "INSERT INTO \"TemplateReactionRegulation_comments\" ("
  "\"object_id\","
  "\"index\","
  "\"value\")"
  " VALUES (:1,:2,:3)";

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::comments_traits::delete_all_statement[] =
  "DELETE FROM \"TemplateReactionRegulation_comments\""
  " WHERE \"object_id\"=:1";

  // name
  //

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::name_traits::select_all_statement[] =
  "SELECT "
  "\"TemplateReactionRegulation_name\".\"index\","
  "\"TemplateReactionRegulation_name\".\"value\""
  " FROM \"TemplateReactionRegulation_name\" WHERE \"TemplateReactionRegulation_name\".\"object_id\"=:1"
  " ORDER BY \"TemplateReactionRegulation_name\".\"index\""
  ;

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::name_traits::insert_one_statement[] =
  "INSERT INTO \"TemplateReactionRegulation_name\" ("
  "\"object_id\","
  "\"index\","
  "\"value\")"
  " VALUES (:1,:2,:3)";

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::name_traits::delete_all_statement[] =
  "DELETE FROM \"TemplateReactionRegulation_name\""
  " WHERE \"object_id\"=:1";

  // id_xref
  //

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::id_xref_traits::select_all_statement[] =
  "SELECT "
  "\"TemplateReactionRegulation_id_xref\".\"index\","
  "\"TemplateReactionRegulation_id_xref\".\"value\""
  " FROM \"TemplateReactionRegulation_id_xref\" WHERE \"TemplateReactionRegulation_id_xref\".\"object_id\"=:1"
  " ORDER BY \"TemplateReactionRegulation_id_xref\".\"index\""
  ;

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::id_xref_traits::insert_one_statement[] =
  "INSERT INTO \"TemplateReactionRegulation_id_xref\" ("
  "\"object_id\","
  "\"index\","
  "\"value\")"
  " VALUES (:1,:2,:3)";

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::id_xref_traits::delete_all_statement[] =
  "DELETE FROM \"TemplateReactionRegulation_id_xref\""
  " WHERE \"object_id\"=:1";

  // id_participant
  //

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::id_participant_traits::select_all_statement[] =
  "SELECT "
  "\"TemplateReactionRegulation_id_partici\".\"index\","
  "\"TemplateReactionRegulation_id_partici\".\"value\""
  " FROM \"TemplateReactionRegulation_id_partici\" WHERE \"TemplateReactionRegulation_id_partici\".\"object_id\"=:1"
  " ORDER BY \"TemplateReactionRegulation_id_partici\".\"index\""
  ;

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::id_participant_traits::insert_one_statement[] =
  "INSERT INTO \"TemplateReactionRegulation_id_partici\" ("
  "\"object_id\","
  "\"index\","
  "\"value\")"
  " VALUES (:1,:2,:3)";

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::id_participant_traits::delete_all_statement[] =
  "DELETE FROM \"TemplateReactionRegulation_id_partici\""
  " WHERE \"object_id\"=:1";

  // interactionType
  //

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::interactionType_traits::select_all_statement[] =
  "SELECT "
  "\"TemplateReactionRegulation_interactio\".\"index\","
  "\"TemplateReactionRegulation_interactio\".\"value\""
  " FROM \"TemplateReactionRegulation_interactio\" WHERE \"TemplateReactionRegulation_interactio\".\"object_id\"=:1"
  " ORDER BY \"TemplateReactionRegulation_interactio\".\"index\""
  ;

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::interactionType_traits::insert_one_statement[] =
  "INSERT INTO \"TemplateReactionRegulation_interactio\" ("
  "\"object_id\","
  "\"index\","
  "\"value\")"
  " VALUES (:1,:2,:3)";

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::interactionType_traits::delete_all_statement[] =
  "DELETE FROM \"TemplateReactionRegulation_interactio\""
  " WHERE \"object_id\"=:1";

  // id_controller
  //

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::id_controller_traits::select_all_statement[] =
  "SELECT "
  "\"TemplateReactionRegulation_id_control\".\"index\","
  "\"TemplateReactionRegulation_id_control\".\"value\""
  " FROM \"TemplateReactionRegulation_id_control\" WHERE \"TemplateReactionRegulation_id_control\".\"object_id\"=:1"
  " ORDER BY \"TemplateReactionRegulation_id_control\".\"index\""
  ;

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::id_controller_traits::insert_one_statement[] =
  "INSERT INTO \"TemplateReactionRegulation_id_control\" ("
  "\"object_id\","
  "\"index\","
  "\"value\")"
  " VALUES (:1,:2,:3)";

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::id_controller_traits::delete_all_statement[] =
  "DELETE FROM \"TemplateReactionRegulation_id_control\""
  " WHERE \"object_id\"=:1";

  void access::object_traits< ::UniPAX::TemplateReactionRegulation >::
  bind (oracle::bind* b, image_type& i, oracle::statement_kind sk)
  {
    ODB_POTENTIALLY_UNUSED (sk);

    using namespace oracle;

    std::size_t n (0);

    // Control base
    //
    object_traits< ::UniPAX::Control >::bind (b + n, i, sk);
    n += 9UL - (
      sk == statement_select ? 0 : (
        sk == statement_insert ? 0 : 1UL));
  }

  bool access::object_traits< ::UniPAX::TemplateReactionRegulation >::
  init (image_type& i, const object_type& o, oracle::statement_kind sk)
  {
    ODB_POTENTIALLY_UNUSED (i);
    ODB_POTENTIALLY_UNUSED (o);
    ODB_POTENTIALLY_UNUSED (sk);

    using namespace oracle;

    if (i.change_callback_.callback != 0)
      (i.change_callback_.callback) (i.change_callback_.context);

    bool grew (false);

    // Control base
    //
    if (object_traits< ::UniPAX::Control >::init (i, o, sk))
      grew = true;

    return grew;
  }

  void access::object_traits< ::UniPAX::TemplateReactionRegulation >::
  init (object_type& o, const image_type& i, database& db)
  {
    ODB_POTENTIALLY_UNUSED (o);
    ODB_POTENTIALLY_UNUSED (i);
    ODB_POTENTIALLY_UNUSED (db);

    // Control base
    //
    object_traits< ::UniPAX::Control >::init (o, i, db);
  }

  struct access::object_traits< ::UniPAX::TemplateReactionRegulation >::container_statement_cache_type
  {
    oracle::container_statements_impl< comments_traits > comments;
    oracle::container_statements_impl< name_traits > name;
    oracle::container_statements_impl< id_xref_traits > id_xref;
    oracle::container_statements_impl< id_participant_traits > id_participant;
    oracle::container_statements_impl< interactionType_traits > interactionType;
    oracle::container_statements_impl< id_controller_traits > id_controller;

    container_statement_cache_type (oracle::connection& c)
    : comments (c),
      name (c),
      id_xref (c),
      id_participant (c),
      interactionType (c),
      id_controller (c)
    {
    }
  };

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::persist_statement[] =
  "INSERT INTO \"TemplateReactionRegulation" ("
  "\"unipaxId\","
  "\"unipaxSource\","
  "\"availability\","
  "\"standardName\","
  "\"displayName\","
  "\"evidence\","
  "\"dataSource\","
  "\"controlType\","
  "\"id_controlled\")"
  " VALUES (:1,:2,:3,:4,:5,:6,:7,:8,:9)";

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::find_statement[] =
  "SELECT "
  "\"TemplateReactionRegulation".\"unipaxId\","
  "\"TemplateReactionRegulation".\"unipaxSource\","
  "\"TemplateReactionRegulation".\"availability\","
  "\"TemplateReactionRegulation".\"standardName\","
  "\"TemplateReactionRegulation".\"displayName\","
  "\"TemplateReactionRegulation".\"evidence\","
  "\"TemplateReactionRegulation".\"dataSource\","
  "\"TemplateReactionRegulation".\"controlType\","
  "\"TemplateReactionRegulation".\"id_controlled\""
  " FROM \"TemplateReactionRegulation""
  " WHERE \"TemplateReactionRegulation".\"unipaxId\"=:1";

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::update_statement[] =
  "UPDATE \"TemplateReactionRegulation" SET "
  "\"unipaxSource\"=:1,"
  "\"availability\"=:2,"
  "\"standardName\"=:3,"
  "\"displayName\"=:4,"
  "\"evidence\"=:5,"
  "\"dataSource\"=:6,"
  "\"controlType\"=:7,"
  "\"id_controlled\"=:8"
  " WHERE \"unipaxId\"=:9";

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::erase_statement[] =
  "DELETE FROM \"TemplateReactionRegulation""
  " WHERE \"unipaxId\"=:1";

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::query_statement[] =
  "SELECT "
  "\"TemplateReactionRegulation".\"unipaxId\","
  "\"TemplateReactionRegulation".\"unipaxSource\","
  "\"TemplateReactionRegulation".\"availability\","
  "\"TemplateReactionRegulation".\"standardName\","
  "\"TemplateReactionRegulation".\"displayName\","
  "\"TemplateReactionRegulation".\"evidence\","
  "\"TemplateReactionRegulation".\"dataSource\","
  "\"TemplateReactionRegulation".\"controlType\","
  "\"TemplateReactionRegulation".\"id_controlled\""
  " FROM \"TemplateReactionRegulation""
  " LEFT JOIN \"ImportSource\" \"unipaxSource\" ON \"unipaxSource\".\"unipaxId\" = \"TemplateReactionRegulation".\"unipaxSource\""
  " LEFT JOIN \"Evidence\" \"evidence\" ON \"evidence\".\"unipaxId\" = \"TemplateReactionRegulation".\"evidence\""
  " LEFT JOIN \"Provenance\" \"dataSource\" ON \"dataSource\".\"unipaxId\" = \"TemplateReactionRegulation".\"dataSource\""
  " ";

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::erase_query_statement[] =
  "DELETE FROM \"TemplateReactionRegulation""
  " ";

  const char access::object_traits< ::UniPAX::TemplateReactionRegulation >::table_name[] =
  "\"TemplateReactionRegulation"";

  void access::object_traits< ::UniPAX::TemplateReactionRegulation >::
  persist (database&, const object_type& obj)
  {
    using namespace oracle;

    oracle::connection& conn (
      oracle::transaction::current ().connection ());
    object_statements< object_type >& sts (
      conn.statement_cache ().find_object<object_type> ());
    image_type& im (sts.image ());
    binding& imb (sts.insert_image_binding ());

    if (init (im, obj, statement_insert))
      im.version++;

    if (im.version != sts.insert_image_version () || imb.version == 0)
    {
      bind (imb.bind, im, statement_insert);
      sts.insert_image_version (im.version);
      imb.version++;
    }

    insert_statement& st (sts.persist_statement ());
    if (!st.execute ())
      throw object_already_persistent ();

    id_image_type& i (sts.id_image ());
    init (i, obj.unipaxId);

    binding& idb (sts.id_image_binding ());
    if (i.version != sts.id_image_version () || idb.version == 0)
    {
      bind (idb.bind, i);
      sts.id_image_version (i.version);
      idb.version++;
    }

    comments_traits::persist (
      obj.comments,
      idb,
      sts.container_statment_cache ().comments);

    name_traits::persist (
      obj.name,
      idb,
      sts.container_statment_cache ().name);

    id_xref_traits::persist (
      obj.id_xref,
      idb,
      sts.container_statment_cache ().id_xref);

    id_participant_traits::persist (
      obj.id_participant,
      idb,
      sts.container_statment_cache ().id_participant);

    interactionType_traits::persist (
      obj.interactionType,
      idb,
      sts.container_statment_cache ().interactionType);

    id_controller_traits::persist (
      obj.id_controller,
      idb,
      sts.container_statment_cache ().id_controller);
  }

  void access::object_traits< ::UniPAX::TemplateReactionRegulation >::
  update (database&, const object_type& obj)
  {
    using namespace oracle;

    oracle::connection& conn (
      oracle::transaction::current ().connection ());
    object_statements< object_type >& sts (
      conn.statement_cache ().find_object<object_type> ());

    id_image_type& i (sts.id_image ());
    init (i, obj.unipaxId);

    image_type& im (sts.image ());
    if (init (im, obj, statement_update))
      im.version++;

    bool u (false);
    binding& imb (sts.update_image_binding ());
    if (im.version != sts.update_image_version () || imb.version == 0)
    {
      bind (imb.bind, im, statement_update);
      sts.update_image_version (im.version);
      imb.version++;
      u = true;
    }

    binding& idb (sts.id_image_binding ());
    if (i.version != sts.update_id_image_version () || idb.version == 0)
    {
      if (i.version != sts.id_image_version () || idb.version == 0)
      {
        bind (idb.bind, i);
        sts.id_image_version (i.version);
        idb.version++;
      }

      sts.update_id_image_version (i.version);

      if (!u)
        imb.version++;
    }

    if (sts.update_statement ().execute () == 0)
      throw object_not_persistent ();

    comments_traits::update (
      obj.comments,
      idb,
      sts.container_statment_cache ().comments);

    name_traits::update (
      obj.name,
      idb,
      sts.container_statment_cache ().name);

    id_xref_traits::update (
      obj.id_xref,
      idb,
      sts.container_statment_cache ().id_xref);

    id_participant_traits::update (
      obj.id_participant,
      idb,
      sts.container_statment_cache ().id_participant);

    interactionType_traits::update (
      obj.interactionType,
      idb,
      sts.container_statment_cache ().interactionType);

    id_controller_traits::update (
      obj.id_controller,
      idb,
      sts.container_statment_cache ().id_controller);
  }

  void access::object_traits< ::UniPAX::TemplateReactionRegulation >::
  erase (database&, const id_type& id)
  {
    using namespace oracle;

    oracle::connection& conn (
      oracle::transaction::current ().connection ());
    object_statements< object_type >& sts (
      conn.statement_cache ().find_object<object_type> ());

    id_image_type& i (sts.id_image ());
    init (i, id);

    binding& idb (sts.id_image_binding ());
    if (i.version != sts.id_image_version () || idb.version == 0)
    {
      bind (idb.bind, i);
      sts.id_image_version (i.version);
      idb.version++;
    }

    comments_traits::erase (
      idb,
      sts.container_statment_cache ().comments);

    name_traits::erase (
      idb,
      sts.container_statment_cache ().name);

    id_xref_traits::erase (
      idb,
      sts.container_statment_cache ().id_xref);

    id_participant_traits::erase (
      idb,
      sts.container_statment_cache ().id_participant);

    interactionType_traits::erase (
      idb,
      sts.container_statment_cache ().interactionType);

    id_controller_traits::erase (
      idb,
      sts.container_statment_cache ().id_controller);

    if (sts.erase_statement ().execute () != 1)
      throw object_not_persistent ();
  }

  access::object_traits< ::UniPAX::TemplateReactionRegulation >::pointer_type
  access::object_traits< ::UniPAX::TemplateReactionRegulation >::
  find (database& db, const id_type& id)
  {
    using namespace oracle;

    oracle::connection& conn (
      oracle::transaction::current ().connection ());
    object_statements< object_type >& sts (
      conn.statement_cache ().find_object<object_type> ());
    object_statements< object_type >::auto_lock l (sts);

    if (l.locked ())
    {
      if (!find_ (sts, id))
        return pointer_type ();
    }

    pointer_type p (
      access::object_factory< object_type, pointer_type  >::create ());
    pointer_traits< pointer_type >::guard pg (p);
    pointer_cache_traits< pointer_type >::insert_guard ig (
      pointer_cache_traits< pointer_type >::insert (db, id, p));
    object_type& obj (pointer_traits< pointer_type >::get_ref (p));

    if (l.locked ())
    {
      callback (db, obj, callback_event::pre_load);
      init (obj, sts.image (), db);
      sts.find_statement ().stream_result ();
      load_ (sts, obj);
      sts.load_delayed ();
      l.unlock ();
      callback (db, obj, callback_event::post_load);
    }
    else
      sts.delay_load (id, obj, ig.position ());

    ig.release ();
    pg.release ();
    return p;
  }

  bool access::object_traits< ::UniPAX::TemplateReactionRegulation >::
  find (database& db, const id_type& id, object_type& obj)
  {
    using namespace oracle;

    oracle::connection& conn (
      oracle::transaction::current ().connection ());
    object_statements< object_type >& sts (
      conn.statement_cache ().find_object<object_type> ());

    object_statements< object_type >::auto_lock l (sts);

    if (!find_ (sts, id))
      return false;

    reference_cache_traits< object_type >::insert_guard ig (
      reference_cache_traits< object_type >::insert (db, id, obj));

    callback (db, obj, callback_event::pre_load);
    init (obj, sts.image (), db);
    sts.find_statement ().stream_result ();
    load_ (sts, obj);
    sts.load_delayed ();
    l.unlock ();
    callback (db, obj, callback_event::post_load);
    ig.release ();
    return true;
  }

  bool access::object_traits< ::UniPAX::TemplateReactionRegulation >::
  reload (database& db, object_type& obj)
  {
    using namespace oracle;

    oracle::connection& conn (
      oracle::transaction::current ().connection ());
    object_statements< object_type >& sts (
      conn.statement_cache ().find_object<object_type> ());

    object_statements< object_type >::auto_lock l (sts);

    if (!find_ (sts, obj.unipaxId))
      return false;

    callback (db, obj, callback_event::pre_load);
    init (obj, sts.image (), db);
    sts.find_statement ().stream_result ();
    load_ (sts, obj);
    sts.load_delayed ();
    l.unlock ();
    callback (db, obj, callback_event::post_load);
    return true;
  }

  bool access::object_traits< ::UniPAX::TemplateReactionRegulation >::
  find_ (oracle::object_statements< object_type >& sts, const id_type& id)
  {
    using namespace oracle;

    id_image_type& i (sts.id_image ());
    init (i, id);

    binding& idb (sts.id_image_binding ());
    if (i.version != sts.id_image_version () || idb.version == 0)
    {
      bind (idb.bind, i);
      sts.id_image_version (i.version);
      idb.version++;
    }

    image_type& im (sts.image ());
    binding& imb (sts.select_image_binding ());

    if (im.version != sts.select_image_version () || imb.version == 0)
    {
      bind (imb.bind, im, statement_select);
      sts.select_image_version (im.version);
      imb.version++;
    }

    select_statement& st (sts.find_statement ());
    st.execute ();
    select_statement::result r (st.fetch ());
    st.free_result ();
    return r != select_statement::no_data;
  }

  void access::object_traits< ::UniPAX::TemplateReactionRegulation >::
  load_ (oracle::object_statements< object_type >& sts, object_type& obj)
  {
    oracle::binding& idb (sts.id_image_binding ());

    comments_traits::load (
      obj.comments,
      idb,
      sts.container_statment_cache ().comments);

    name_traits::load (
      obj.name,
      idb,
      sts.container_statment_cache ().name);

    id_xref_traits::load (
      obj.id_xref,
      idb,
      sts.container_statment_cache ().id_xref);

    id_participant_traits::load (
      obj.id_participant,
      idb,
      sts.container_statment_cache ().id_participant);

    interactionType_traits::load (
      obj.interactionType,
      idb,
      sts.container_statment_cache ().interactionType);

    id_controller_traits::load (
      obj.id_controller,
      idb,
      sts.container_statment_cache ().id_controller);
  }

  result< access::object_traits< ::UniPAX::TemplateReactionRegulation >::object_type >
  access::object_traits< ::UniPAX::TemplateReactionRegulation >::
  query (database&, const query_base_type& q)
  {
    using namespace oracle;
    using odb::details::shared;
    using odb::details::shared_ptr;

    oracle::connection& conn (
      oracle::transaction::current ().connection ());

    object_statements< object_type >& sts (
      conn.statement_cache ().find_object<object_type> ());

    image_type& im (sts.image ());
    binding& imb (sts.select_image_binding ());

    if (im.version != sts.select_image_version () || imb.version == 0)
    {
      bind (imb.bind, im, statement_select);
      sts.select_image_version (im.version);
      imb.version++;
    }

    shared_ptr<select_statement> st (
      new (shared) select_statement (
        sts.connection (),
        query_statement + q.clause (),
        q.parameters_binding (),
        imb));

    st->execute ();

    shared_ptr< odb::object_result_impl<object_type> > r (
      new (shared) oracle::object_result_impl<object_type> (
        q, st, sts));

    return result<object_type> (r);
  }

  unsigned long long access::object_traits< ::UniPAX::TemplateReactionRegulation >::
  erase_query (database&, const query_base_type& q)
  {
    using namespace oracle;

    oracle::connection& conn (
      oracle::transaction::current ().connection ());

    delete_statement st (
      conn,
      erase_query_statement + q.clause (),
      q.parameters_binding ());

    return st.execute ();
  }
}

// Begin epilogue.
//
//
// End epilogue.

#include <odb/post.hxx>