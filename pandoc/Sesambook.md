Prologue
========

> Introduction to the book
>
> Who is this book for?
>
> Who are we?
>
> What is Sesam?
>
> What problems do we seek to solve?
>
> What should you expect to learn?
>
> Innholdsfortegnelse og forklaring/justification for det.

Architecture and Concepts
=========================

Introduction
------------

Sesam opens the door to running a data-driven business, but what is a
data driven business and how does the journey towards it look?

In this chapter we will introduce you to Sesam as a way of not only
developing but thinking. You will learn about overarching themes for
designing integrations, the components you build with and the pitfalls
to look out for along the way.

After reading you can expect to recognize and design a data driven
Integration of your own.

Architecture
------------

What do we mean about architecture

1.  Architecture and Concepts: Beginner
    -----------------------------------

    1.  ### Different types of Integration Architectures @Jonas

When modelling data, integration architectures (IA) lay the foundation
upon which data is shaped and structured as it moves through one system
to another. Within IA, Point-to-point (P2P) and Enterprise Service Bus
(ESB) have been used extensively. Recent trends, however move away from
these established integration principles and places data and its
mobility at its center.

Albeit, before elaborating on how integration principles has undergone
recent radical changes, you should first dive into P2P and ESB.

1.  Point-to-Point

This kind of IA is a simple integration principle. As an example of P2P
imagine sending a message generated in one system to a single receiver
in another system. This simplified example shows both the pros and cons
to using P2P. It is simple and therefore easy to manage, albeit what if
another system is introduced and so multiple new messages need to be
send? Well, in this case P2P is not your best option, and the issue of
scalability presents itself. To illustrate how complexity can make P2P a
non-viable option look at the below
![](media/image1.png){width="4.013888888888889in"
height="2.0972222222222223in"}Figure 1 – Point-to-Point:

As illustrated on the right-hand side of the above figure “Complex
integration”, you have to maintain multiple connections separately
which, in this case, will make P2P time consuming and expensive to
manage. Therefore, amongst other things, new architectural principles
have been developed. One of the more prominent ones being ESB.

1.  Enterprise Service Bus

The ESB is a more robust IA and plays a critical role in connecting
diverse systems and services in a Service Oriented Architecture (SOA).
The ESB takes on the responsibility of ensuring that data sent from one
system conforms to the requirements in another system. This core
functionality is an important feature as to why the ESB is such an
established architectural principle. In addition, the ESB aids in
simplifying integration efforts when connecting differing applications
that need to communicate with each other. See Figure 2 – Enterprise
Service Bus.

![Diagram, text Description automatically
generated](media/image2.png){width="2.946369203849519in"
height="1.6296292650918636in"}

Taking into account the positives from using an ESB for your IA - some
challenges still remain unresolved. Recent years transition towards more
cloud-based solutions, hybrid solutions and the remaining tendency to
focus on the systems in the ESB rather than the data itself has
propelled what is called “Data Driven Architecture”.

### 

### Data driven architecture @Jonas

As opposed to both the P2P and the ESB integration principles the Data
Driven Architecture (DDA) does not focus on systems – rather the data
and how modelling a data-centric ecosystem takes precedence in order to
realize an agile meanwhile robust IA, see Figure 3 – Data Driven
Architecture.

![](media/image5.png){width="3.0150284339457567in"
height="2.537037401574803in"}

Figure 3 - Data Driven Architecture

As opposed to P2P and ESB, DDA is, respectively, scalable and agile - in
that it does not need the “Bus” to orchestrate data flows, rather DDA
relies on natural flows of connected data to trigger data flows. You may
think that this also presents a risk - that is correct.

In order to utilize DDA you need to create logical, robust albeit
flexible data flows. If done correctly nothing beats the scalability,
cost-effectiveness and possibilities DDA provides. A word of caution
however, if such guidelines is not agreed upon and followed up on, you
risk creating a waterfall of technical depth as time goes by and these
natural flows of data grows unhinged.

### Datahub @Jonas

Continuing on the path of building data-centric solutions, the term
“Datahub” comes into play. A datahub is recognized by its frictionless
data flow and as such builds upon the architectural principles presented
in DDA. A datahub can be described as a solution that consists of
multiple different technologies, i.e., a data warehouse, microservices,
databases etc.

A Datahub shares data by connecting generators of data with consumers of
data. In practice this allows data to be delivered in endpoints that can
interact with the datahub in terms of injecting data into the datahub or
exposing data to an external system. As such, a datahub mediates and
manages how data flows between systems and makes states of data visible
to consumers outside the datahub.

In a sense, you could say that a datahub is a digital representation of
an enterprise and also what SESAM often becomes when it is used
properly. As with any other technologies there are pros and cons to any
technology.

Some of these are listed below, so you might be able to recognize them –
“down the road”.

Pros:

-   Has enterprise scope, i.e. cloud, hybrid.

-   Creates visibility into all data.

-   Centralizes data control.

-   Moves data in, close to, real time.

-   Connects data.

Cons:

-   Data does not persist.

-   Demands advanced capabilities.

-   Does not operate in silos.

    1.  ### ~~Sesam “sesam-world-map”?~~

    2.  ### The parts of sesam @Erik

Terminology

Systems, pipes, datasets

In order to understand how Sesam works, it is important to understand
the parts Sesam is made up of.

There are three central re-occurring concepts in Sesam which you will
encounter in your everyday life working with the integration platform:
systems, pipes and datasets. These are the fundamental parts which make
up a Sesam integration pipeline. Figure 1.1.5A gives you an insight into
how a standard Sesam integration pipeline would look.

![A general pipeline flow in Sesam depicting the three central parts of
a Sesam integration, systems, pipes and datasets. The arrows symbolizes
the direction of data
flow.](media/image6.png "Fig 1.1.5A"){width="5.0in" height="0.5in"}

-   Systems:

> A system’s main feature is to import and export data into and out of
> the Sesam portal. They are therefore found in the beginning and end of
> the pipeline flows. A system could connect to a REST API, directly to
> a database of simply send data to a waiting http server. Sesam has
> several of these system types built into the product to simplify the
> workings inside the portal. In situations where the built-in system
> types are not enough for your requirements Sesam also supports
> connecting systems to a microservice which in turn can manipulate and
> delegate data according to your own specifications, making Sesam a
> very robust and comprehensive tool.

-   Pipes:

> Pipes handles the transformation of the data and specifies where the
> data is supposed to be sent. Manipulation of the data is done through
> Sesam’s own Data Transformation Language (DTL) which allows you to
> add, remove, transform and combine data according to you own needs. A
> pipe generally acquires data from a system or from a dataset depending
> on where the pipe is located inside the integration pipeline.

-   Datasets:

> Datasets are Sesam’s storage units. This is where pipes store the data
> after configuring them and in a pipeline flow, they are generally
> found between pipes. Sesam stores data in order to be able to perform
> tracking and indexing, but you will learn more about these
> functionalities later in this book (maybe a link?).

### The Sesam portal

Show **basics** of portal

(Here also refer to a full chapter for portal or from the projects
chapter?)

Integrations, connections and configurations can all be accessed inside
the Sesam portal; the user interface of the Sesam product, The Sesam
portal can be accessed at portal.sesam.io, and in this section you will
learn the most commonly used parts of the portal such that you can
orient yourself, as well as manage existing integrations. For a full
explanation if the workings and functionality of the Sesam portal,
please look \[here (with a link)\].

When logging in to the portal you will be met with a page like figure
1.1.6A

![](media/image7.png){width="6.185894575678041in"
height="2.0104166666666665in"}

The cards on the Dashboard are often referred to as “subscriptions” or
“nodes” and they represent separate instances of Sesam installations.
Each node comes in different sizes (memory available) depending on the
requirements of the customer/project/user. In this example you will be
shown the portal inside the node called “Training Node”, but all nodes
will have the same setup, only different set of systems, pipes and
datasets.

When entering the “Training Node” you will be met with the page seen in
figure 1.1.6B.

![](media/image8.png){width="6.14583552055993in"
height="2.9960936132983376in"}

In this section we will only focus on the specific parts of the portal
needed to start working with Sesam, namely the “Pipes” page and the
“Systems” page.

When entering the “Pipes” page you will be met by figure 1.1.6C. This
figure shows you all the available pipes in your subscription as well as
some of their corresponding meta-data. There are also several search and
filter options available, which are specially handy when trying to
located one, or a set of pipes, in a subscription with many pipes.

![](media/image9.png){width="6.260416666666667in"
height="2.986741032370954in"}

If you now enter the pipe called “person-cmm” we can look into more of
details regarding how you may use the portal to navigate, troubleshoot
and configure you pipes.

Upon entering a pipe you by default be sent to the pipe’s “Graph” view,
as seen in figure 1.1.6D.

![](media/image10.png){width="5.0in" height="2.4479166666666665in"}

The graph view shows you which pipes are upstream and downstream to your
the specific pipe you have selected, and it also shows connections to
related pipes (you will learn more about connected pipes later \[link
maybe?\]). For now we will focus on three of the pipe’s subpages;
Config, Input and Output.

-   Config: The config subpage is where the actual coding takes place.
    This is where you define what this specific pipe is supposed to do.

    1.  ### Working language JSON

Something general about JSON

JSON configuration of pipes and systems

DTL also validated as JSON?

### Namegiving conventions

How (maybe a table) to give good names to the different parts in sesam

Why this is **really** important

### Systems

Short about systems (where in the sesam-world-map)

Something more general about pipes maybe in context of pipes and
datasets

Very low level but enough to set up an inputpipe after maybe?

and refer to systems chapter

Namegivingconventions ref. 1.1.8

Where to make new ref 1.1.6

### Pipes

Something more general about pipes maybe in context of systems and
datasets

Inbound(Input?)/Preparation/Outbound(Output?)

Very low level but enough to connect to system?

and refer to pipes chapter

Pump

Input & output(sink)

Namegivingconventions ref. 1.1.8

Where to make new ref 1.1.6

### Datasets

Something more general about pipes maybe in context of systems and pipes

Very low level but enough to see entities?

and refer to entities subchapter ref. 1.1.12

Namegivingconventions ref. 1.1.8

Where to make new ref 1.1.6

### Datasets vs. tables

Examples end ref to 1.1.13

1.  ### Entities / JSON (Key-value pairs)

2.  ### Globals as a concept

Why globals

Golden records

Gjør data tilgjengelig

Ref. 1.2.19, 3.2.14

### Special sesam attributes

Namespace

Rdf:type

\_id

### 1.1 Tasks for Architecture and Concepts: Beginner

1\. *In what component is data stored in Sesam?*

2\. *Which component moves data in Sesam?*

3\. *What moves through Sesam?*

*4. Name the input pipe for this system & table:*\
*System name : IFS\
Table name: workorder\
Pipe name: \_\_\_\_\_\_*

5\. *in an entity representing a row, how would the column “personalid”
with row value “123” look after it is read by a pipe named crm-person
and stored inside an entity of the output dataset?*

6\. *What is the difference between and entity stored as a row in a table
vs in a Sesam Dataset?*

7\. *What is the minimum required to define an entity?*

2.  Architecture and Concepts: Novice
    ---------------------------------

    16. ### Joining Data

The value of joining data

Short overview of what data joining is

1-1, 1-n, n-m

16. ### Make namespaced for foreign keys \[make-ni\]

17. ### Full Outer Join (Merge)

All data from input ends up in output

### Left Join (Hops)

Data is appended to the output

### Global

Golden – the best truth about common attributes of a concept collected
from multiple sources

Coalesce, prioritization of source data (master data)

### Generic input pipes, custom output pipes

Write about where globals fit into the bigger picture of data flows, how
do pipes going in look and how do pipes going out look?

### Filter entities on the way out

Filter gives the ability to stop entities from being sent by providing a
logical gate.\
On the other hand, it can make sure you only send the entities you wish
to receive in an endpoint.

Makes sure the endpoint only receives the entities they want.\
Can stop entities from triggering events they shouldn’t trigger.

+ + many examples\
filtering on source data\
on target data (from hops f.ex) – typical example, hop to
global-classification and map status, if cancelled then filter

### Tag your entities - Categorization of sub-concepts

Extra:type

### Customize data structure for endpoints

Sesam has transformative functions to add, remove,Copy the attributes
you want the end system to receive.\
All changes to attributes you add to the target will cause an entity
update.

Referring to namespace 1.1.15 to know property origin, rename, add, copy

### Change tracking & data delta

All entities stored inside sesam have a \_hash value. This is a
quantification of an entity and is calculated every time an entity is
processed by a pipe. If the \_hash value changes or is new, the entity
will be stored as a new version in dataset. We call this change in
\_hash value a data-delta.

Any data-delta for an entity in a dataset causes downstream pipes to see
this as a new sequence number they haven’t yet read. This in turn makes
the pipe process the entity. If the processed entity does not exist or
gets a new \_hash in the output of the pipe, it will cause an update to
the output dataset.

2.  ### Tasks for Architecture and Concepts: Novice

3.  Architecture and Concepts: Intermediate
    ---------------------------------------

    26. ### Hops

Dependency tracking

Stacking av hops (dvs flere datasett)

Indeksering

### Incremental System queries

Dataset vs database-tabell (oppdatere data)

### Subset

Grabbing the rdf:type or type of data you need from a global

### Dynamic, Static & Timeseries Data

Dynamic data = frequent updates to the same object\
Static data = rare/never update to the same object\
Timeseries = Frequent new entities about the same object. (f.ex \_id =
meterpoint & timestamp and attribute attached is reading the last hour)

### When to use a microservice

For everything Sesam is bad at or can’t do.

### 1.3 Tasks for Architecture and Concepts: Intermediate

1.4 Architecture and Concepts: Advanced
---------------------------------------

### Choosing a source dataset for your pipe

Do not create children based on a hop, rather read from the dataset you
hop to.

### Eventual Consistency

Dependency tracking causes reprocessing of source entity in the pipe
with the hops.

Idempotency

### Create Child & Emit children

Change-tracking

### 1.4 Tasks for Architecture and Concepts: Advanced

Epilogue
--------

Congratulations on making your way through this treacherous territory
and finding your way out. Let’s have a quick chat about the path you’ve
walked before moving on to greener pastures.

Systems
=======

Introduction
------------

In this chapter you will learn about Systems; the component which
connects Sesam to the external world. They are an integral component of
Sesam and have a wide array of uses, so we will start off by introducing
the general knowledge you should have at-hand while setting one up.

Onwards you will learn how Systems interface with Pipes and how to use
customized solutions when Sesams built-in systems cannot.

1.  Systems: Beginner
    -----------------

    1.  ### What is a system in Sesam?

Everything external to the node

1.  ### Introduction to SQL & Json systems

2.  ### Pipe interaction with systems.

Input, output (mention transform?)

1.  ### How to create a system with Templates

2.  ### Environment variables & Secrets

How are secrets stored in the backend? – Discuss with product

How do systems read secrets? Encrypted and decrypted in transmission or
passed as plain text?

\$SECRET

\$ENV

### JSON Push & Pull protocol

Lots of info in docs.

### Tasks for Systems: Beginner

2.  Systems: Novice
    ---------------

    7.  ### What is a system in Sesam?

General introduction to what systems are and what problems they solve.\
Everything external to the node

### Systems as a pipe source

System configuration (mostly) defines the possibilities pipes have to
pull data.

We need to write about what a system is in the context of a pipe source,
with not only configs but explanations. Keep it simple don’t go into too
many system types (json & SQL?). Write more text than configurations,
draw stuff. (1-N)

### Systems as a pipe sink

Same as above only with system as a sink. What is a system in the
context of a sink? What does the pipe see? What does the system see?
(1-N)

### \[System?\] Authentication methods 

Default authentication methods built in for systems handling URLS
\$SECRET()\
Basic, Oauth2, JWT, microservices

Authentication methods for specific systems: ?? worth mentioning\
SQL, oracle

### System Types

Mention all built in system types, is there a common denominator?\
refer to appendix/documentation for more information

“Type”: “system\_XXXX”

1.  ### Tasks for Systems: Novice

2.  Systems: Intermediate
    ---------------------

    12. ### Microservice System

How does Sesam look at microservices?

What is a microservice?

How do I use one?

Don’t go too deep, we have a whole module for these.

Probably want to wait with this subchapter until we’ve written the
microservices module.

### HTTP Transforms

When you need to transform or append information which Sesam isn’t good
at handling, you’d use an http\_transform.

When you don’t want all the data from a system, but need to append it to
the data you’re processing, you’d typically do a http\_transform.

Example: You want to get the current weather for a location, but you
don’t want to read all the weather around the world constantly into
sesam. What you’re interested in is the weather for a location specified
by an entity at runtime. You can get this by querying an API per entity
being processed.vor

Example: You need to convert UTM to LatLong coordinates. Sesam doesn’t
have a function to do this built in, so you make a microservice to do
the conversion and call this with an http\_transform.

General Example: appending time-dependent datapoints to your output
without reading absolutely all of the time-dependented data.

### Chaining of Systems

Microservices are easily re-used if they do generic stuff.

The point of chaining microservices or API’s is to use multiple generic,
simple services to solve a bigger complex problem.

Pros: Usually re-use of microservices makes development time shorter

Cons: Debugging can be complex and unforeseen issues hard to find &
pinpoint. Can’t see it in the graph, need to search the whole node
configuration to find the systems.

### 2.3 Tasks for Systems: Intermediate

Epilogue
--------

Summarize the topics the reader has gone through on a very high level.

In relation to the introduction, tell them what they’ve learned and what
they should be capable of using this knowledge to do.

DTL – The language of Pipes
===========================

Introduction
------------

### What is DTL?

Data transformation language - Programming language, mix of JSON &
func\_programming etc

### Why DTL?

What problems does it solve? Why did we need to make a new programming
language?

### Where is DTL used? – Can fit into 3.1.1 probably.

Where do you write it? Why only in pipes?

1.  DTL: Beginner
    -------------

    1.  ### Pipes, where DTL executes @Morten

What happens when a pipe runs?

What is the relationship of pipes and DTL?

### Entities, pipes and \_id @Geir Atle

What is an \_id? Why do we need it? Is it used for the same thing
always? What is it good for? ~~Absolutely nothing~~ quite a bit!

#### The reserved property \_id

Everything in Sesam must have a unique identity, whether it is a system
configuration, a pipe configuration, a dataset, an entity within a
dataset, etc.

The reserved property named \_id is used as unique identity for
components in Sesam.

This unique identity allows for precise references between
configurations and precise connections between data entities.

See &lt;ref to \_id restrictions&gt; for more information on how to
create valid identifiers.

#### System \_id

The identity (\_id) of a system must be unique within a Sesam node
instance.

Once a system configuration is saved, its identity cannot be changed. If
you need to change a system’s identity, you can Duplicate the system
configuration, save the duplicated configuration with the desired
identity, and then delete the original configuration.

Remember to also update any other configurations that were referencing
the original system to reference the new identity.

In the Sesam Management Studio, when you view the list of all systems in
the Systems menu, the System column will by default show you the
identity of all the defined systems in that Sesam node.

If the name property is also defined for a system configuration, then
the System column will show that value instead of the identity.

Regardless, if you need to reference a system configuration from another
configuration in Sesam, you reference the system’s identity.

See &lt;ref to naming conventions&gt; for more information on system
naming conventions.

See &lt;ref to system config&gt; for more information on how to define
systems in Sesam.

#### Pipe \_id

The identity (\_id) of a pipe must be unique within a Sesam node
instance.

Once a pipe configuration is saved, its identity cannot be changed. If
you need to change a pipe’s identity, you can Duplicate the pipe
configuration, save the duplicated configuration with the desired
identity, and then delete the original configuration.

In the Sesam Management Studio, when you view the list of all pipes in
the Pipes menu, the Pipe column will by default show you the identity of
all the defined pipes in that Sesam node.

If the name property is also defined for a pipe configuration, then the
Pipe column will show that value instead of the identity.

Regardless, if you need to reference a pipe configuration from another
configuration in Sesam, you reference the pipe’s identity.

See &lt;ref to naming conventions&gt; for more information on pipe
naming conventions.

See &lt;ref to system config&gt; for more information on how to define
pipes in Sesam.

#### Dataset \_id

The identity (\_id) of a dataset must be unique within a Sesam node
instance.

By default, a dataset will have the same identity as the pipe it is
generated from.

You can override the default dataset identity by defining the dataset
property in the pipe’s sink configuration. (reference to sink config).

Once a dataset is generated, its identity cannot be changed. If you need
to change a dataset’s identity, you can edit the dataset property in the
pipe’s sink configuration, delete the sink dataset, and restart the
pipe. This will generate a new dataset with the new identity.

Remember to also update any other configurations that were referencing
the original dataset to reference the new identity.

In the Sesam Management Studio, when you view the list of all datasets
in the Datasets menu, the Dataset column will show you the identity of
all the datasets in that Sesam node.

If you need to reference a dataset from another configuration in Sesam,
you reference the pipe’s identity.

#### Entity \_id

The identity (\_id) of an entity must be unique within the dataset in
which it resides. The identity for an entity is similar to a primary key
in a database table.

What makes an entity unique is usually dictated by the source system the
entity is imported from. This can typically be the primary key(s) of a
database table.

This means that you usually define the identity for entities in inbound
pipes.

If the source system has multiple properties that combined makes the
entity unique, you must combine all these properties into the \_id
property to ensure that uniqueness is preserved in Sesam.

In some cases, you can handle this in the source configuration part of
the inbound pipe. SQL sources, as an example, allows you to specify
multiple columns from the source database as primary keys. Sesam will
then combine these columns automatically into the \_id during import.

In other cases, you may have to explicitly add the \_id property with
DTL in a transform step in the inbound pipe. This may be relevant when
the source configuration does not support specifying multiple properties
as primary keys.

#### Entity \_id and namespaces

By default, the pipe identity of the pipe where the entity originates is
used as namespace for both the entity’s identifier and the entity’s
properties.

Note that there is a slight, but significant, difference in the
placement of the namespace for the entity’s \_id property compared to
its other properties.

For the \_id property, the namespace prefixes the property **value**:

“\_id”: ”**&lt;namespace&gt;**:&lt;value&gt;”

For other properties, the namespace prefixes the property **name**:

“**&lt;namespace&gt;**:property1”: ”&lt;value&gt;”

The reason the namespace is put into the value of the \_id is to ensure
that all entities are unique across all source systems.

Example:

An entity imported from a system called “crm” with a “user” table
consisting of a primary key “userId” with value “123”, and a column
“email” with value “john.doe@foo.no” would look something like this:

{

“\_id”: “**crm-user**:123”,

“**crm-user**:userId”: “123”,

“**crm-user**:email”: “john.doe@foo.com”

}

Now imagine you have another source where one of the entities are also
identified by “123”.

Unless the namespace is part of the property value of \_id, both
entities would have the same \_id, namely “123”. So by prefixing this
value with a namespace we ensure that these entities do not come into
conflict with each other.

See &lt;namespace ref&gt; for more info on namespaces.

See &lt;make-ni ref&gt; for more info on namespaced identifiers and
connecting data in Sesam.

#### The autogenerated property \$ids

Should probably write something sensible about the connection between
\_id and \$ids somewhere. Maybe related to merge pipes?

### Entity Data model – Data Types @Gabriell

Give quick examples of each of these types.

Dict {}

Entity {\_id}

Må inneholde en identifikator \_id

List

String

Integer

Decimal

Float

Boolean

Null

### Syntax

All configurations in JSON

\[&lt;func\_name&gt;, &lt;key&gt;, +&lt;arg/value&gt;\]

-   Transformative funksjoner, funksjoner for å endre Target

    -   Kopierer value fra Source til Target og kan endre key

        -   Copy kopierer hele key-value parret.

        -   Rename setter ny key og kopierer value

    -   Legger til ny Key som et datapunkt. Verdien kan være en
        > transformasjon av et datapunkt eller et helt nytt datapunkt på
        > Target.

        -   Add, key, value : Her legger du på en ny key, hvor verdien
            > ikke nødvendigvis finnes fra før. Derfor er det ikke
            > implisitt om det er fra \_T eller \_S

-   Utrykk/Expressions

    -   Utregninger, funksjoner på verdier

        1.  ### Bootstrap

Gå gjennom prosessen fra man trykker "New pipe" til "Save" til "Start"
til "Restart"

-   Sette \_id

-   Bruke templater

    -   Source system "sesam:node" (refers to itself)

        -   Provider: premade dataset

    -   "add DTL transform"

-   \["add", "hello", "world"\]

-   Save

-   Starte

-   \["add", "key", "value"\]

-   Save

-   Start - ikke noe nytt i output

-   Referer "Proessser ny data" over, vis det også.

    1.  ### Pipe shortcuts

Preview, Ctrl + Enter

Formatering alt + .

Save ctrl + s

Find/replace

Ctrl+space = Search/autocomplete

1.  ### Tasks for DTL: Beginner

2.  DTL: Novice
    -----------

    7.  ### “Copy”

Explain copy, based on ref 3.1.4 above

Wildcard \* \[namespace:\*\]

"Copy" whitelist, blacklist

### “Add”

Explain the add, based on ref 3.1.4 above

### “Concat” – Concatination

Concatenation of strings, examples etc

### rdf:type

Resource Description Framework (?) explain what it means in Sesam
context

### Namespace

Explain namespace in \_id (value) and keys.

EXAMPLESSS

### “Make-ni”

Declaraiton of foreign key in Sesam, explain /reference Namespace

### “Eq” – Equality

Equality for joins \[n-n\]

### Merge as a Source

Examples, steal from PP training, show in tables vs json, everything
coming in goes out.

-   Strategy

-   Identidy - \_id etter merge

<!-- -->

-   datasets

    7.  ### Filter as a transform

Explain in the context of reading from global pipes

### Coalesce

ref 1.2.19

### Nested dictionaries

As you can see in *Example 3.2.17A: Dotted Notation*, we can get
attributes inside dictionaries by using “.”

Dotted notation

list of dicts can give you list of values from a single key.

A: \[{“foo”:1},{“foo”:2}\] -&gt; \_S.A.foo = \[1,2\]

1.  \[“add”, “some-nested-attribute”,
    “\_S.somedict.some-nested-attribute”\] 

*Example 3.2.17A: Dotted Notation*,

### Apply – Custom Functions

Basic, bare bruk på data fra \_S, forklar det uten å bruke hops

### Merge as a function

Source type Merge VS Transformation Merge

Merging dictionaries up to the root level of entities.

### Hops

Basics, uten apply

### \_ Properties

(\_deleted, filtered, \_id, \_previous, \_updated, *\_hash? REF 1.2.24*)

### Type examples

Type eksempler:

• Datettime

• Dict {}

• List

* First

* Unique/Distinct

* Last

* Count

* nth

• String

• Integer

• Decimal

• Float

• Boolean

* And

* Or

* Not

* In

* Eq

* If-null

* Is-empty

1.  ### Tasks for DTL: Novice

2.  DTL: Intermediate
    -----------------

    23. ### More on Pipes

• Pump

* Dead-letter…

• Metadata

• Reset-to-end

• Stop

• Enable/disable

### Pipe Sink

Eksplisitt (vs implicit dataset) Sink - til system/fil

23. ### if

24. ### Case &? case-eq

25. ### Multiple transforms

### 3.3.27 Dependency tracking in Hops

When does dependency tracking work? How does it work? When doesn’t it
work (multiple transforms) Ref 1.3.25

### "Apply-hops"

Apply a function to the entities retrieved by your hop

### Source Subset

You don’t really need to filter :P

### Tasks for DTL: Intermediate

4.  DTL: Advanced
    -------------

    30. ### Filter as an expression

VS as a transform (filter objects in list)

### \_. Syntax and Functions

\_. : path, map, filter, what does it reference? How does it work?

### Map

Map, map-values, map-dict

### \_P & \_R – Parent & Root

How do I use \_P. notation? Where does it point?

### “Create-child”

1-N

dep. Tracking, \$children, emit\_child transform type (2 pipes necessary
for all updates to propagate)

30. ### Recursion in Hops & Apply

31. ### Key-values

32. ### Escape Namespaced Identifiers \[ni\]

Add ::hello

### 3.4 Tasks for DTL: Advanced

Epilogue
--------

Summarize the topics the reader has gone through on a very high level.

In relation to the introduction, tell them what they’ve learned and what
they should be capable of using this knowledge to do.

4. Projects & Infrastructure
============================

Introduction
------------

@todo Gabriell

4.1 Projects & Infrastructure Beginner
--------------------------------------

### Portal GUI

Bli kjent med gui

Datasets

previous version etc.

Task på å sette opp ting som gjøres når man er i prosjekt

Laste opp/ned node i tools

Legge til brukere

Legge til env-vars/secrets (system secrets vs secrets)

Lage JWT

se på Execution logs/system dataset

system:config-dataset

Lage grupp/tilganger

### sesam-CLI

NB!! IKKE BRUK SYNCCONFIG TIL Å LASTE OPP/NED TIL AKTIVE NODER (PROD)

pre-requisite lære seg hvordan man installerer det.

lag en sesam-init &lt;- feature request

setup

expected folder

test.conf.json

whitelist/blacklist

test.json

entiteter

env-var-folder

set up vars for different environments

test-env

.syncconfig

jwt, node

kommandoer

sesam upload/download

test

update

-print-scheduler-log

-vv

-use-internal-scheduler

wipe

restart

verify

run

-version

Hvordan funker expected output

### Testing & Testdata

testing

Manuell testing med sesam-cli før opplasting til versjonskontroll

Manuell testing med config-group på live node

Automatisk testing med ci-node

Testdata

Bør lage data som reflekterer virkelige koblinger mellom data i systemer

Bør være nok for å beskrive de caser man kan møte i virkeligheten

Bør ikke være all data i prod

Bør være anonymisert

Bør reflektere \*innkommende\* data

Bør utvidet behov legges til data, ikke endre eksisterende

Bør gis navn utfra det case du vil teste, f.eks gi entiteten navn utfra
casen

Dokumenter testdata

\\\\oppdater prosjekt i docs utfra hva vi skriver\\\\

Hvordan funker expected output

### Dokumentasjon

Hvordan bruke docs.sesam.io

developer guide!!

ctrl + f "hva du tror funksjon heter"

Hvordan dokumentere

Schema definition

hva mener vi er dokumentasjon

Generell dokumentasjon

DTL dokumentasjon(comments)

clean code

### JWT/Authentisering

Hvordan fungerer JWT’er?

NB: Skal snake mer om API I sesam-in-the-wild

### Groups & Permissions

Hvordan virker det

Får man satt opp tilgangsstyring i Sesam?

1.  ### Tasks for Projects & Infrastructure: Beginner

2.  Projects & Infrastructure: Novice
    ---------------------------------

    7.  ### Node config?

Mappestruktur

System

Pipes

Node-metadata.conf.json

+expected

Global metadata

Namespaces

Tag for å inkludere c++ ext.

Dependency tracking hops limit

signalling

Referer mye til dokumentasjon

### Deployment

Når trenger man å resette pipes?/Når trenger man ikke det

Update last seen

reset to end

reset

Disable/enable pipes (spesifik endpoint)

Indexering

### Monitorering 

microservices

pipes

ekstern monitorering

Execution logs/system dataset

### Arbeidsmetodikk

1\. Dokumentere source-data og sink-data før en flyt

formater

datamengde

frekvens

2\. Analysere innkommende data for globala dataset

3\. Lage testdata

4\. Drøfte behov & Løsninger

5\. Velge løsning

6\. Lag løsning

Mer?

1.  ### Tasks for Projects & Infrastructure: Novice

2.  Projects & Infrastructure: Intermediate
    ---------------------------------------

    8.  ### dev/CI/test/prod-noder

dev = personlig node der utvikling foregår

test = node som kjører samme config som prod med testdata for å finne
bugs

CI = do tests for pull requests /deployments before deploying.

prod = live node som kjører live integrasjoner

Tagging av brancher for deployment

### CI/CD/TDD?

ci-node

kjører med test-data

embedded data

NB!! nye cli fra 1.18.1(separat testdata-fodler)

NB!! ikke koblet til live systemer, ikke legg inn secrets som ikke skal
være der

node-env

conditional source

embedded data

NB!! nye cli fra 1.18.1(separat testdata-folder)

conditional transform

Hvordan bruker vi versjonskontroll(git, vcs, svn)

initiere repo (se docs)

protected branches

merge regler

byggserver

Autodeploy/vs ikke

### Workflow in Projects

Get task

\[Document task\]

Pull repo

Create branch

Do changes

Test changes

\[Create more test cases\]

Update expected data

Push changes

Document solution

Deploy to test

Test changes in test – go back to create branch if necessary.

Deploy to prod

### Tasks for Projects & Infrastructure: Intermediate

Epilogue
--------

Summarize the topics the reader has gone through on a very high level.

In relation to the introduction, tell them what they’ve learned and what
they should be capable of using this knowledge to do.

Microservices
=============

Introduction
------------

1.  Microservices: Beginner
    -----------------------

    1.  ### What is a microservice?

Nevn bruksområder

språk

Docker

### Why use Microservices in Sesam?

System som gjør ting andre systemer ikke kan

### How are Microservices used in Sesam?

Ekte Use caser

### Microservice hosting

Sesamcommunity Git & Docker

Intro til Hosting

### Running a microservice in Sesam

Intro til Running I sesam

Forklare GUI

Pull & Restart

> Status
>
> Refresh

Forklare Config

Pipe source/sink/http

### Types of Microservices

> Interne
>
> http-transform
>
> Source, sink (begge i 1?)
>
> Eksterne
>
> Monitorering av Sesam

### Naming Convention

\_id standard system naming convention (source/sink system name)

Repo/microservice naming convention recommendation:
sesam-&lt;system&gt;\[-&lt;special-functionality&gt;\]

### Tasks for Microservices: Beginner – Tasks

Run a microservice in Sesam \[could be sink, http, source\]

1.  Microservices: Novice
    ---------------------

    8.  ### Interacting with a Microservice in Sesam

Sesam push/pull protocol

Error handling/logging

Pipes

Statuslogg \[Hvordan bruke & Lese\]

Log-level

Trigger/Call

Endepunkt i ms (/&lt;paramater&gt;)

Hvordan sender man info til ms fra sesam

url-i pipe

url-parameter

### Microservice Development Prerequisites

> Docker
>
> User
>
> Program
>
> GitHub
>
> User
>
> CLI/Desktop

### Changing a Microservice

> Workflow
>
> Fork \[Vi må lage et repo\]
>
> Change
>
> Test
>
> Teste lokalt
>
> Bygge docker konteiner
>
> Pushe docker konteiner
>
> Explanation of Bare Bones DockerFile
>
> How DockerFiles run \[Sequentally, cache\]

### Authentication with microservices

Docker hosting site login

Passing Env-vars/Secrets i Sesam

Oauth2 standard – Salesforce microservice

### Sesam I/O

Common for sesams input & output

Sesam push/pull protocol

Sesam-json (formattering)

Lister av entiteter

query-parameter

url-parameter

is-first

is-last

### Using a Microservice as Input in Sesam

Inside sesam

Best practise:

Delta/last seen

request-params

is-first

is-last

### Looking inside an Input Microservice

Inside the microservice

Transparens (minst mulig transformasjon i microservice)

Måter å returnere entiteter på (Transform i MS vs transform i pipe)

Streaming

Logging

Gi gode feilmeldinger på http, catch spesifikke exceptions

### Tasks for Microservices: Novice

Run a microservice in Sesam \[could be sink, http, source\]

2.  Microservices: Intermediate
    ---------------------------

    15. ### Using a Microservice as Output in Sesam

Ukjent: Business logikk

Eventual Consistency 1.4.30

NB!! \_properties blir med ut!! NB!!

Filter

\_filtered - blir ikke sendt videre

\_deleted - blir sendt videre

Endpoints fjerner namespaces

Batching/streaming

NB! siste batch sendt fra sesam er alltid en tom liste

### Looking inside an Output Microservice

Create vs update

Formattering

Transparens (minst mulig transformasjon i microservice)

transit-encoding fra sesam

Logging

Gi gode feilmeldinger på http, catch spesifikke exceptions

Batching/streaming

NB! siste batch sendt fra sesam er alltid en tom liste

### Guidelines for Microservice Development

*Check if it already exists*

Documentation: Readme

Define Scope

Gjenbrukbarhet

Sesamutils

Templates

Env var for dynamiske MS’er

Videreutvikling

Release/tagging

Ref. Optimalisering 5.3.17

Requirements.txt

### Microservices and GitHub \[VCS\]

Lisenser

For community bruk

For privat bruk

Community github/slack/stackoverflow

Krav til microservices i sesam-community

Videreutvikling

Release/tagging

Byggserver – Travis, Azure ContainerRegistry

For community bruk

For privat bruk

Reference the “5.2.8 Changing a Microservice” for workflow

Ref appendix with complete microservice workflow (create a sequence
diagram Gabriell/Daniel?)

### Optimizing a Microservice

Minnebruk

Streaming / Yield

Delta/last seen

Transparens (minst mulig transformasjon i microservice)

### Microservice System types

Lots of examples!

How should microservices which read or write to/from these types work?
What have we learned?

Source & Sink

Apier

> Paging
>
> Update VS Create

Filer

sFtp

SOAP

### Tasks for Microservices: Intermediate

Run a microservice in Sesam \[could be sink, http, source\]

Create a microservice

1.  Microservices: Advanced
    -----------------------

    21. ### Testing

Env vars

Lokal testing

Returnerer riktig format (json som sesam kan lese)

Unit testing

\[Experimental\] Undersøke:

\[Experimental\] Morten? (docker-compose att: Gabriell)\
 

\[Experimental\] !!NB!! Definer testing i ms // Lag en test-ms-template
// Implementer MVP testing på sesam-community \[great expectations
python-lib Daniel har info\]!!

### Proxy Endpoint \[Jonas\]

Kan lage en ms med frontend f.eks og eksponere den fra sesam

### Chaining

Ref advanced system 2.4.13.

### Tasks for Microservices: Intermediate

Run a microservice in Sesam \[could be sink, http, source\]

Create a microservice

Epilogue
--------

Summarize the topics the reader has gone through on a very high level.

In relation to the introduction, tell them what they’ve learned and what
they should be capable of using this knowledge to do.

Sesam in the Wild \[WIP\]
=========================

Introduction
------------

Sesam in the Wild: Beginner
---------------------------

### 6.1.1 Beginner topic

### 6.1 Tasks for Sesam in the Wild: Beginner

Sesam in the Wild: Novice
-------------------------

### 6.2.X: Novice topic

### 6.2 Tasks for Sesam in the Wild: Novice

Sesam in the Wild: Intermediate
-------------------------------

### 6.3.X: Intermediate topic

### 6.3 Tasks for Sesam in the Wild: Intermediate

Sesam in the Wild: Advanced
---------------------------

### 6.4.X: Advanced topic

### 6.4 Tasks for Sesam in the Wild: Advanced

Epilouge
--------

Appendix
========

1.X.X

2.X.X

3.X.X

4.X.X

5.X.X
