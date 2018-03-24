.class public abstract Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;
.super Lorg/seamless/xml/SAXParser$Handler;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/fourthline/cling/support/model/DIDLObject;",
        ">",
        "Lorg/seamless/xml/SAXParser$Handler",
        "<TI;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/DIDLObject;Lorg/seamless/xml/SAXParser$Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/seamless/xml/SAXParser$Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 631
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    .line 632
    invoke-direct {p0, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser$Handler;)V

    .line 633
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 637
    invoke-super {p0, p1, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v0, "http://purl.org/dc/elements/1.1/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 641
    const-string v0, "title"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->setTitle(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    const-string v0, "creator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->setCreator(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto :goto_0

    .line 645
    :cond_2
    const-string v0, "description"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 646
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto :goto_0

    .line 647
    :cond_3
    const-string v0, "publisher"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 648
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    new-instance v2, Lorg/fourthline/cling/support/model/Person;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto :goto_0

    .line 649
    :cond_4
    const-string v0, "contributor"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 650
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    new-instance v2, Lorg/fourthline/cling/support/model/Person;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto :goto_0

    .line 651
    :cond_5
    const-string v0, "date"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 652
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 653
    :cond_6
    const-string v0, "language"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 654
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 655
    :cond_7
    const-string v0, "rights"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 656
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 657
    :cond_8
    const-string v0, "relation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 661
    :cond_9
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    const-string v0, "writeStatus"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 665
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 666
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fourthline/cling/support/model/WriteStatus;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/WriteStatus;

    move-result-object v1

    .line 665
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->setWriteStatus(Lorg/fourthline/cling/support/model/WriteStatus;)Lorg/fourthline/cling/support/model/DIDLObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 669
    :catch_0
    move-exception v0

    invoke-static {}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring invalid writeStatus value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 671
    :cond_a
    const-string v0, "class"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 672
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 673
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 674
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    .line 675
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 673
    invoke-direct {v1, v2, v3}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 678
    :cond_b
    const-string v0, "artist"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 679
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 680
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    .line 681
    new-instance v2, Lorg/fourthline/cling/support/model/PersonWithRole;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v4

    const-string v5, "role"

    invoke-interface {v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/fourthline/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    .line 679
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 684
    :cond_c
    const-string v0, "actor"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 685
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 686
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ACTOR;

    .line 687
    new-instance v2, Lorg/fourthline/cling/support/model/PersonWithRole;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v4

    const-string v5, "role"

    invoke-interface {v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/fourthline/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ACTOR;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    .line 685
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 690
    :cond_d
    const-string v0, "author"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 691
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 692
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$AUTHOR;

    .line 693
    new-instance v2, Lorg/fourthline/cling/support/model/PersonWithRole;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v4

    const-string v5, "role"

    invoke-interface {v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/fourthline/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$AUTHOR;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    .line 691
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 696
    :cond_e
    const-string v0, "producer"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 697
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 698
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    new-instance v2, Lorg/fourthline/cling/support/model/Person;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    .line 697
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 700
    :cond_f
    const-string v0, "director"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 701
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 702
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;

    new-instance v2, Lorg/fourthline/cling/support/model/Person;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    .line 701
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 704
    :cond_10
    const-string v0, "longDescription"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 705
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 706
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 708
    :cond_11
    const-string v0, "storageUsed"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 709
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 710
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;-><init>(Ljava/lang/Long;)V

    .line 709
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 712
    :cond_12
    const-string v0, "storageTotal"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 713
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 714
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;-><init>(Ljava/lang/Long;)V

    .line 713
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 716
    :cond_13
    const-string v0, "storageFree"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 717
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 718
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;-><init>(Ljava/lang/Long;)V

    .line 717
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 720
    :cond_14
    const-string v0, "storageMaxPartition"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 721
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 722
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;-><init>(Ljava/lang/Long;)V

    .line 721
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 724
    :cond_15
    const-string v0, "storageMedium"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 725
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 726
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/fourthline/cling/support/model/StorageMedium;)V

    .line 725
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 728
    :cond_16
    const-string v0, "genre"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 729
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 730
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;-><init>(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 732
    :cond_17
    const-string v0, "album"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 733
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 734
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM;-><init>(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 736
    :cond_18
    const-string v0, "playlist"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 737
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 738
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 740
    :cond_19
    const-string v0, "region"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 741
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 742
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$REGION;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$REGION;-><init>(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 744
    :cond_1a
    const-string v0, "rating"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 745
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 746
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RATING;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RATING;-><init>(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 748
    :cond_1b
    const-string v0, "toc"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 749
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 750
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$TOC;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$TOC;-><init>(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 752
    :cond_1c
    const-string v0, "albumArtURI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 753
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;-><init>(Ljava/net/URI;)V

    .line 755
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v2

    .line 756
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_1d

    .line 768
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 757
    :cond_1d
    const-string v3, "profileID"

    invoke-interface {v2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 759
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;

    .line 760
    new-instance v4, Lorg/fourthline/cling/support/model/DIDLAttribute;

    .line 761
    const-string v5, "urn:schemas-dlna-org:metadata-1-0/"

    .line 762
    const-string v6, "dlna"

    .line 763
    invoke-interface {v2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    .line 760
    invoke-direct {v4, v5, v6, v7}, Lorg/fourthline/cling/support/model/DIDLAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-direct {v3, v4}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;-><init>(Lorg/fourthline/cling/support/model/DIDLAttribute;)V

    .line 758
    invoke-virtual {v1, v3}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->addAttribute(Lorg/fourthline/cling/support/model/DIDLObject$Property;)V

    .line 756
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 769
    :cond_1f
    const-string v0, "artistDiscographyURI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 770
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 771
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST_DISCO_URI;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST_DISCO_URI;-><init>(Ljava/net/URI;)V

    .line 770
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 773
    :cond_20
    const-string v0, "lyricsURI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 774
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 775
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LYRICS_URI;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LYRICS_URI;-><init>(Ljava/net/URI;)V

    .line 774
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 777
    :cond_21
    const-string v0, "icon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 778
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 779
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ICON;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ICON;-><init>(Ljava/net/URI;)V

    .line 778
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 781
    :cond_22
    const-string v0, "radioCallSign"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 782
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 783
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;-><init>(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 785
    :cond_23
    const-string v0, "radioStationID"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 786
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 787
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;-><init>(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 789
    :cond_24
    const-string v0, "radioBand"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 790
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 791
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;-><init>(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 793
    :cond_25
    const-string v0, "channelNr"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 794
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 795
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;-><init>(Ljava/lang/Integer;)V

    .line 794
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 797
    :cond_26
    const-string v0, "channelName"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 798
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 799
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;-><init>(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 801
    :cond_27
    const-string v0, "scheduledStartTime"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 802
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 803
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;-><init>(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 805
    :cond_28
    const-string v0, "scheduledEndTime"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 806
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 807
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;-><init>(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 809
    :cond_29
    const-string v0, "DVDRegionCode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 810
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 811
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;-><init>(Ljava/lang/Integer;)V

    .line 810
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 813
    :cond_2a
    const-string v0, "originalTrackNumber"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 814
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 815
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;-><init>(Ljava/lang/Integer;)V

    .line 814
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0

    .line 817
    :cond_2b
    const-string v0, "userAnnotation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 819
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$USER_ANNOTATION;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$USER_ANNOTATION;-><init>(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_0
.end method
