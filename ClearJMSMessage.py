import re

connect('weblogic', 'welcome1', 't3://localhost:7001')

serverRuntime()

cd('JMSRuntime/AdminServer.jms/JMSServers/jmsServer/Destinations/jmsModule!jms/topic/TopicName')

durableSubscribers = cmo.getDurableSubscribers()
names = []

stopApplication('ApplicationName')

for ds in durableSubscribers:
	names.append(ds.getName())
	cmo.destroyJMSDurableSubscriberRuntime(ds)

startApplication('ApplicationName')

for name in names:
	name = re.sub("_.*", "", name)
	cmo.createJMSDurableSubscriberRuntime(name, name, null, null)
