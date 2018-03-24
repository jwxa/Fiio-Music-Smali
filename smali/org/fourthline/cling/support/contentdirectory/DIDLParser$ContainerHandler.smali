.class public Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;
.super Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler",
        "<",
        "Lorg/fourthline/cling/support/model/container/Container;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/container/Container;Lorg/seamless/xml/SAXParser$Handler;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    .line 875
    invoke-direct {p0, p1, p2, p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;-><init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/DIDLObject;Lorg/seamless/xml/SAXParser$Handler;)V

    .line 876
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 916
    invoke-super {p0, p1, p2, p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    const-string v0, "searchClass"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getSearchClasses()Ljava/util/List;

    move-result-object v0

    .line 922
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 923
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    .line 924
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 925
    const-string v4, "true"

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v5

    const-string v6, "includeDerived"

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 922
    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 921
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    const-string v0, "createClass"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getCreateClasses()Ljava/util/List;

    move-result-object v0

    .line 930
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 931
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    .line 932
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 933
    const-string v4, "true"

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v5

    const-string v6, "includeDerived"

    invoke-interface {v5, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 930
    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 929
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 942
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "container"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 944
    invoke-static {}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "In DIDL content, missing \'dc:title\' element for container: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 946
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v0

    if-nez v0, :cond_1

    .line 947
    invoke-static {}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "In DIDL content, missing \'upnp:class\' element for container: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 949
    :cond_1
    const/4 v0, 0x1

    .line 951
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 880
    invoke-super {p0, p1, p2, p3, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 882
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 886
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createItem(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v1

    .line 887
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->addItem(Lorg/fourthline/cling/support/model/item/Item;)Lorg/fourthline/cling/support/model/container/Container;

    .line 888
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, v1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createItemHandler(Lorg/fourthline/cling/support/model/item/Item;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;

    goto :goto_0

    .line 890
    :cond_2
    const-string v0, "desc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 892
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createDescMeta(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/DescMeta;

    move-result-object v1

    .line 893
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->addDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 894
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, v1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createDescMetaHandler(Lorg/fourthline/cling/support/model/DescMeta;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;

    goto :goto_0

    .line 896
    :cond_3
    const-string v0, "res"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createResource(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/Res;

    move-result-object v1

    .line 899
    if-eqz v1, :cond_0

    .line 900
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/container/Container;->addResource(Lorg/fourthline/cling/support/model/Res;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 901
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, v1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createResHandler(Lorg/fourthline/cling/support/model/Res;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ResHandler;

    goto :goto_0
.end method
