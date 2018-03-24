.class public Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;
.super Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler",
        "<",
        "Lorg/fourthline/cling/support/model/item/Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/item/Item;Lorg/seamless/xml/SAXParser$Handler;)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    .line 957
    invoke-direct {p0, p1, p2, p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;-><init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/DIDLObject;Lorg/seamless/xml/SAXParser$Handler;)V

    .line 958
    return-void
.end method


# virtual methods
.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 985
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "item"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 986
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/item/Item;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 987
    invoke-static {}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "In DIDL content, missing \'dc:title\' element for item: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/item/Item;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 989
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/item/Item;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v0

    if-nez v0, :cond_1

    .line 990
    invoke-static {}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->access$0()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "In DIDL content, missing \'upnp:class\' element for item: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/item/Item;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 992
    :cond_1
    const/4 v0, 0x1

    .line 994
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 962
    invoke-super {p0, p1, p2, p3, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 964
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    const-string v0, "res"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 968
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createResource(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/Res;

    move-result-object v1

    .line 969
    if-eqz v1, :cond_0

    .line 970
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/item/Item;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/item/Item;->addResource(Lorg/fourthline/cling/support/model/Res;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 971
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, v1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createResHandler(Lorg/fourthline/cling/support/model/Res;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ResHandler;

    goto :goto_0

    .line 974
    :cond_2
    const-string v0, "desc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createDescMeta(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/DescMeta;

    move-result-object v1

    .line 977
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/item/Item;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/item/Item;->addDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 978
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, v1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createDescMetaHandler(Lorg/fourthline/cling/support/model/DescMeta;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;

    goto :goto_0
.end method
