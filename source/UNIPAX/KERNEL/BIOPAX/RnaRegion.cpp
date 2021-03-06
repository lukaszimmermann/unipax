#include<UNIPAX/KERNEL/BIOPAX/RnaRegion.h>
#include<set>
//Begin section for file RnaRegion.cpp
//TODO: Add definitions that you want preserved
//End section for file RnaRegion.cpp

UniPAX::RnaRegion::RnaRegion() : UniPAX::PhysicalEntity()
{
}

UniPAX::RnaRegion::RnaRegion(const RnaRegion & arg) : UniPAX::PhysicalEntity(arg),
		entityReference(arg.entityReference)
//		id_entityReference(arg.id_entityReference)
{

}

UniPAX::RnaRegion & UniPAX::RnaRegion::operator =(const RnaRegion & arg)  {
	UniPAX::PhysicalEntity::operator=(arg);
	entityReference = arg.entityReference;
//	id_entityReference = arg.id_entityReference;

	return *this;
}

UniPAX::RnaRegion::~RnaRegion()  {
}

bool UniPAX::RnaRegion::merge(RnaRegion& object)
{
	{
		std::set<UniPAX::EntityReferencePtr> tmp(getEntityReferences().begin(), getEntityReferences().end());
		for (std::vector<UniPAX::EntityReferencePtr>::iterator it = object.getEntityReferences().begin(); it != object.getEntityReferences().end(); it++)
		{
			if (*it != 0)
			{
				tmp.insert(*it);
			}
		}
		getEntityReferences().assign(tmp.begin(), tmp.end());
	}
	return UniPAX::PhysicalEntity::merge(object);
}

bool UniPAX::RnaRegion::update(PersistenceManager& manager)
{
	{
		std::vector<boost::shared_ptr<UniPAX::EntityReference> > tmp_vec;
		std::vector<boost::shared_ptr<UniPAX::EntityReference> >::iterator it;
		for (it = entityReference.begin(); it != entityReference.end(); it++)
		{
			if (manager.isMerged(*it))
				tmp_vec.push_back(boost::dynamic_pointer_cast<EntityReference>(manager.getMergedObject(*it)));
			else
				tmp_vec.push_back(*it);
		}
		setEntityReferences(tmp_vec);
	}

	return UniPAX::PhysicalEntity::update(manager);
}


const std::vector<boost::shared_ptr<UniPAX::EntityReference> > & UniPAX::RnaRegion::getEntityReferences() const {
	return entityReference;
}

std::vector<boost::shared_ptr<UniPAX::EntityReference> > & UniPAX::RnaRegion::getEntityReferences() {
	return entityReference;
}

void UniPAX::RnaRegion::addEntityReference(boost::shared_ptr<UniPAX::EntityReference>  _entityReference) {
	entityReference.push_back(_entityReference);
}

void UniPAX::RnaRegion::setEntityReferences(std::vector<boost::shared_ptr<UniPAX::EntityReference> > _entityReferences) {
	entityReference = _entityReferences;
}

bool UniPAX::RnaRegion::setAttribute(std::string& attribute, std::string& value, PersistenceManager& manager) {

	if (UniPAX::PhysicalEntity::setAttribute(attribute, value, manager))
		return true;

	if (boost::iequals(attribute,"entityReference"))
	{
		// if sometimes set to NIL or empty string neglect
		if (value == "NIL" || value.empty())
			return true;

		boost::shared_ptr<UniPAX::UPBase> object = manager.getInstance(value,"");
		if (object == 0)
		{
			std::cerr << "Rna::setAttribute - object not known (value = " << value << ")" << std::endl;
			return false;
		}

		entityReference.push_back(boost::dynamic_pointer_cast<UniPAX::EntityReference>(object));
		return true;
	}

	return false;

}



bool UniPAX::RnaRegion::getAttribute(std::vector<std::pair<std::string,std::string> >& value, PersistenceManager& manager) {

	if (!UniPAX::PhysicalEntity::getAttribute(value, manager))
		return false;

	std::string tmp = "";
	std::vector<boost::shared_ptr<UniPAX::EntityReference> >::iterator it;
	for (it = entityReference.begin(); it != entityReference.end(); it++)
	{
		if (*it == 0)
		{
			//			value.push_back(std::pair<std::string,std::string>("#entityReference", "NIL"));
		}
		else
		{
			tmp.clear();
			if (!manager.getId(*it,tmp))
			{
				return false;
			}
			value.push_back(std::pair<std::string,std::string>("#entityReference", tmp));

		}
	}

	return true;

}

//void UniPAX::RnaRegion::init (odb::callback_event e, odb::database& db) const
//{
//	UniPAX::PhysicalEntity::init(e,db);
//
//	if (e == odb::callback_event::post_load)
//	{
//		// load the object pointer
//		entityReference.clear();
//		std::vector<unsigned long long>::iterator it;
//		for (it = id_entityReference.begin(); it != id_entityReference.end(); it++)
//		{
//			entityReference.push_back(boost::dynamic_pointer_cast<UniPAX::EntityReference>(getObjectByID(db, *it)));
//		}
//
//	}
//	else if ((e == odb::callback_event::pre_persist) || (e == odb::callback_event::pre_update))
//	{
//		// set the object ids
//		id_entityReference.clear();
//		std::vector<boost::shared_ptr<EntityReference> >::iterator it;
//		for (it = entityReference.begin(); it != entityReference.end(); it++)
//		{
//			if (*it != 0)
//				id_entityReference.push_back((*it)->getUnipaxId());
//		}
//
//	}
//
//	return;
//}
