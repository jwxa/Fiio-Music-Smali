.class public Lorg/fourthline/cling/support/contentdirectory/DIDLParser;
.super Lorg/seamless/xml/SAXParser;
.source "DIDLParser.java"


# static fields
.field public static final UNKNOWN_TITLE:Ljava/lang/String; = "Unknown Title"

.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/seamless/xml/SAXParser;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected appendClass(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 596
    .line 599
    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 600
    const-string v1, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    .line 595
    invoke-static {p1, p2, p4, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 602
    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 603
    const-string v1, "name"

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_0
    if-eqz p5, :cond_1

    .line 605
    const-string v1, "includeDerived"

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->isIncludeDerived()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_1
    return-void
.end method

.method protected appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Lorg/w3c/dom/Element;",
            "Lorg/fourthline/cling/support/model/DIDLObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property$NAMESPACE;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 587
    invoke-virtual {p3, p5}, Lorg/fourthline/cling/support/model/DIDLObject;->getPropertiesByNamespace(Ljava/lang/Class;)[Lorg/fourthline/cling/support/model/DIDLObject$Property;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 592
    return-void

    .line 587
    :cond_0
    aget-object v3, v1, v0

    .line 588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getDescriptorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p6, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 589
    invoke-interface {p2, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 590
    invoke-virtual {v3, v4}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->setOnElement(Lorg/w3c/dom/Element;)V

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected booleanToInt(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected buildDOM(Lorg/fourthline/cling/support/model/DIDLContent;Z)Lorg/w3c/dom/Document;
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 319
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 321
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 323
    invoke-virtual {p0, p1, v0, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateRoot(Lorg/fourthline/cling/support/model/DIDLContent;Lorg/w3c/dom/Document;Z)V

    .line 325
    return-object v0
.end method

.method protected createContainer(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/container/Container;
    .locals 3

    .prologue
    .line 144
    new-instance v1, Lorg/fourthline/cling/support/model/container/Container;

    invoke-direct {v1}, Lorg/fourthline/cling/support/model/container/Container;-><init>()V

    .line 146
    const-string v0, "id"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/support/model/container/Container;->setId(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 147
    const-string v0, "parentID"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/support/model/container/Container;->setParentID(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 149
    const-string v0, "childCount"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "childCount"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 153
    :cond_0
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    .line 154
    const-string v2, "restricted"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-interface {v0, v2}, Lorg/fourthline/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 156
    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/support/model/container/Container;->setRestricted(Z)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 159
    :cond_1
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    .line 160
    const-string v2, "searchable"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-interface {v0, v2}, Lorg/fourthline/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 162
    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/support/model/container/Container;->setSearchable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_2
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected createContainerHandler(Lorg/fourthline/cling/support/model/container/Container;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;-><init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/container/Container;Lorg/seamless/xml/SAXParser$Handler;)V

    return-object v0
.end method

.method protected createDescMeta(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/DescMeta;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lorg/fourthline/cling/support/model/DescMeta;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/DescMeta;-><init>()V

    .line 242
    const-string v1, "id"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DescMeta;->setId(Ljava/lang/String;)V

    .line 244
    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 245
    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DescMeta;->setType(Ljava/lang/String;)V

    .line 247
    :cond_0
    const-string v1, "nameSpace"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 248
    const-string v1, "nameSpace"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DescMeta;->setNameSpace(Ljava/net/URI;)V

    .line 250
    :cond_1
    return-object v0
.end method

.method protected createDescMetaHandler(Lorg/fourthline/cling/support/model/DescMeta;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;-><init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/DescMeta;Lorg/seamless/xml/SAXParser$Handler;)V

    return-object v0
.end method

.method protected createItem(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/item/Item;
    .locals 3

    .prologue
    .line 172
    new-instance v1, Lorg/fourthline/cling/support/model/item/Item;

    invoke-direct {v1}, Lorg/fourthline/cling/support/model/item/Item;-><init>()V

    .line 174
    const-string v0, "id"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/support/model/item/Item;->setId(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 175
    const-string v0, "parentID"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/support/model/item/Item;->setParentID(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 178
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v0

    .line 179
    const-string v2, "restricted"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-interface {v0, v2}, Lorg/fourthline/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/support/model/item/Item;->setRestricted(Z)Lorg/fourthline/cling/support/model/DIDLObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    :goto_0
    const-string v0, "refID"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "refID"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/support/model/item/Item;->setRefID(Ljava/lang/String;)V

    .line 191
    :cond_1
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected createItemHandler(Lorg/fourthline/cling/support/model/item/Item;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;-><init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/item/Item;Lorg/seamless/xml/SAXParser$Handler;)V

    return-object v0
.end method

.method protected createResHandler(Lorg/fourthline/cling/support/model/Res;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ResHandler;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ResHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ResHandler;-><init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/Res;Lorg/seamless/xml/SAXParser$Handler;)V

    return-object v0
.end method

.method protected createResource(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/Res;
    .locals 4

    .prologue
    .line 195
    new-instance v0, Lorg/fourthline/cling/support/model/Res;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/Res;-><init>()V

    .line 197
    const-string v1, "importUri"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    const-string v1, "importUri"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setImportUri(Ljava/net/URI;)V

    .line 202
    :cond_0
    :try_start_0
    new-instance v1, Lorg/fourthline/cling/support/model/ProtocolInfo;

    const-string v2, "protocolInfo"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setProtocolInfo(Lorg/fourthline/cling/support/model/ProtocolInfo;)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    const-string v1, "size"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 210
    const-string v1, "size"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setSize(Ljava/lang/Long;)V

    .line 212
    :cond_1
    const-string v1, "duration"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 213
    const-string v1, "duration"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setDuration(Ljava/lang/String;)V

    .line 215
    :cond_2
    const-string v1, "bitrate"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 216
    const-string v1, "bitrate"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setBitrate(Ljava/lang/Long;)V

    .line 218
    :cond_3
    const-string v1, "sampleFrequency"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 219
    const-string v1, "sampleFrequency"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setSampleFrequency(Ljava/lang/Long;)V

    .line 221
    :cond_4
    const-string v1, "bitsPerSample"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 222
    const-string v1, "bitsPerSample"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setBitsPerSample(Ljava/lang/Long;)V

    .line 224
    :cond_5
    const-string v1, "nrAudioChannels"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 225
    const-string v1, "nrAudioChannels"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setNrAudioChannels(Ljava/lang/Long;)V

    .line 227
    :cond_6
    const-string v1, "colorDepth"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 228
    const-string v1, "colorDepth"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setColorDepth(Ljava/lang/Long;)V

    .line 230
    :cond_7
    const-string v1, "protection"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 231
    const-string v1, "protection"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setProtection(Ljava/lang/String;)V

    .line 233
    :cond_8
    const-string v1, "resolution"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 234
    const-string v1, "resolution"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/Res;->setResolution(Ljava/lang/String;)V

    .line 236
    :cond_9
    :goto_0
    return-object v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    sget-object v1, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "In DIDL content, invalid resource protocol info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createRootHandler(Lorg/fourthline/cling/support/model/DIDLContent;Lorg/seamless/xml/SAXParser;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;

    invoke-direct {v0, p0, p1, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;-><init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/DIDLContent;Lorg/seamless/xml/SAXParser;)V

    return-object v0
.end method

.method public debugXML(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 618
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    const-string v1, "-------------------------------------------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 620
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 621
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    const-string v1, "-------------------------------------------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 623
    :cond_0
    return-void
.end method

.method protected documentToString(Lorg/w3c/dom/Document;Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 293
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 300
    if-eqz p2, :cond_0

    .line 305
    const-string v1, "omit-xml-declaration"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 312
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 313
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/fourthline/cling/support/model/DIDLContent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generate(Lorg/fourthline/cling/support/model/DIDLContent;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/fourthline/cling/support/model/DIDLContent;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->buildDOM(Lorg/fourthline/cling/support/model/DIDLContent;Z)Lorg/w3c/dom/Document;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->documentToString(Lorg/w3c/dom/Document;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected generateContainer(Lorg/fourthline/cling/support/model/container/Container;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 355
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing \'upnp:class\' element for container: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    const-string v0, "container"

    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 361
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 362
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing id on container: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    const-string v0, "id"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getParentID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 366
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing parent id on container: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_2
    const-string v0, "parentID"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getParentID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 370
    const-string v0, "childCount"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_3
    const-string v0, "restricted"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->isRestricted()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->booleanToInt(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v0, "searchable"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->isSearchable()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->booleanToInt(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 377
    if-nez v0, :cond_4

    .line 378
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing \'dc:title\' element for container: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 379
    const-string v0, "Unknown Title"

    .line 385
    :cond_4
    const-string v1, "dc:title"

    .line 387
    const-string v3, "http://purl.org/dc/elements/1.1/"

    .line 382
    invoke-static {p2, v2, v1, v0, v3}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 393
    const-string v0, "dc:creator"

    .line 394
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getCreator()Ljava/lang/String;

    move-result-object v1

    .line 395
    const-string v3, "http://purl.org/dc/elements/1.1/"

    .line 390
    invoke-static {p2, v2, v0, v1, v3}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 401
    const-string v0, "upnp:writeStatus"

    .line 402
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getWriteStatus()Lorg/fourthline/cling/support/model/WriteStatus;

    move-result-object v1

    .line 403
    const-string v3, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    .line 398
    invoke-static {p2, v2, v0, v1, v3}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 406
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v3

    const-string v4, "upnp:class"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendClass(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/String;Z)V

    .line 408
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getSearchClasses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 412
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getCreateClasses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 416
    const-string v4, "upnp"

    const-class v5, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;

    const-string v6, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 417
    const-string v4, "dc"

    const-class v5, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$NAMESPACE;

    const-string v6, "http://purl.org/dc/elements/1.1/"

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 419
    if-eqz p4, :cond_6

    .line 420
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 426
    :cond_6
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 431
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/container/Container;->getDescMetadata()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 435
    return-void

    .line 408
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 409
    const-string v4, "upnp:searchClass"

    move-object v0, p0

    move-object v1, p2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendClass(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/String;Z)V

    goto :goto_0

    .line 412
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 413
    const-string v4, "upnp:createClass"

    move-object v0, p0

    move-object v1, p2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendClass(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/String;Z)V

    goto :goto_1

    .line 420
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/item/Item;

    .line 421
    if-eqz v0, :cond_5

    .line 422
    invoke-virtual {p0, v0, p2, v2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateItem(Lorg/fourthline/cling/support/model/item/Item;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 426
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Res;

    .line 427
    if-eqz v0, :cond_7

    .line 428
    invoke-virtual {p0, v0, p2, v2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateResource(Lorg/fourthline/cling/support/model/Res;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_3

    .line 431
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DescMeta;

    .line 432
    if-eqz v0, :cond_8

    .line 433
    invoke-virtual {p0, v0, p2, v2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_4
.end method

.method protected generateDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 3

    .prologue
    .line 539
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DescMeta;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing id of description metadata: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DescMeta;->getNameSpace()Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_1

    .line 543
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing namespace of description metadata: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_1
    const-string v0, "desc"

    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 547
    const-string v1, "id"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DescMeta;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v1, "nameSpace"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DescMeta;->getNameSpace()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DescMeta;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 550
    const-string v1, "type"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DescMeta;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_2
    invoke-virtual {p0, v0, p1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->populateDescMetadata(Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DescMeta;)V

    .line 552
    return-void
.end method

.method protected generateItem(Lorg/fourthline/cling/support/model/item/Item;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 7

    .prologue
    .line 439
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing \'upnp:class\' element for item: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    const-string v0, "item"

    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 445
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 446
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing id on item: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_1
    const-string v0, "id"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getParentID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 450
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing parent id on item: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_2
    const-string v0, "parentID"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getParentID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getRefID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 454
    const-string v0, "refID"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getRefID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_3
    const-string v0, "restricted"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->isRestricted()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->booleanToInt(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 458
    if-nez v0, :cond_4

    .line 459
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing \'dc:title\' element for item: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 460
    const-string v0, "Unknown Title"

    .line 466
    :cond_4
    const-string v1, "dc:title"

    .line 468
    const-string v3, "http://purl.org/dc/elements/1.1/"

    .line 463
    invoke-static {p2, v2, v1, v0, v3}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 474
    const-string v0, "dc:creator"

    .line 475
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getCreator()Ljava/lang/String;

    move-result-object v1

    .line 476
    const-string v3, "http://purl.org/dc/elements/1.1/"

    .line 471
    invoke-static {p2, v2, v0, v1, v3}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 482
    const-string v0, "upnp:writeStatus"

    .line 483
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getWriteStatus()Lorg/fourthline/cling/support/model/WriteStatus;

    move-result-object v1

    .line 484
    const-string v3, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    .line 479
    invoke-static {p2, v2, v0, v1, v3}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElementIfNotNull(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 487
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v3

    const-string v4, "upnp:class"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendClass(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/String;Z)V

    .line 489
    const-string v4, "upnp"

    const-class v5, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;

    const-string v6, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 490
    const-string v4, "dc"

    const-class v5, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$NAMESPACE;

    const-string v6, "http://purl.org/dc/elements/1.1/"

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 491
    const-string v4, "sec"

    const-class v5, Lorg/fourthline/cling/support/model/DIDLObject$Property$SEC$NAMESPACE;

    const-string v6, "http://www.sec.co.kr/"

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->appendProperties(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DIDLObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 498
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getDescMetadata()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 502
    return-void

    .line 493
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Res;

    .line 494
    if-eqz v0, :cond_5

    .line 495
    invoke-virtual {p0, v0, p2, v2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateResource(Lorg/fourthline/cling/support/model/Res;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 498
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DescMeta;

    .line 499
    if-eqz v0, :cond_6

    .line 500
    invoke-virtual {p0, v0, p2, v2}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_1
.end method

.method protected generateResource(Lorg/fourthline/cling/support/model/Res;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 3

    .prologue
    .line 506
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing resource URI value"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 510
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing resource protocol info: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_1
    const-string v0, "res"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v0, v1}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/Object;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 514
    const-string v1, "protocolInfo"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/ProtocolInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getImportUri()Ljava/net/URI;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 516
    const-string v1, "importUri"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getImportUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_2
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getSize()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 518
    const-string v1, "size"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_3
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 520
    const-string v1, "duration"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_4
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getBitrate()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 522
    const-string v1, "bitrate"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getBitrate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_5
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getSampleFrequency()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 524
    const-string v1, "sampleFrequency"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getSampleFrequency()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_6
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getBitsPerSample()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 526
    const-string v1, "bitsPerSample"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getBitsPerSample()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_7
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getNrAudioChannels()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 528
    const-string v1, "nrAudioChannels"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getNrAudioChannels()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_8
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getColorDepth()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 530
    const-string v1, "colorDepth"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getColorDepth()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_9
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getProtection()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 532
    const-string v1, "protection"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getProtection()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_a
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 534
    const-string v1, "resolution"

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_b
    return-void
.end method

.method protected generateRoot(Lorg/fourthline/cling/support/model/DIDLContent;Lorg/w3c/dom/Document;Z)V
    .locals 4

    .prologue
    .line 329
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    const-string v1, "DIDL-Lite"

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 330
    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 333
    const-string v0, "http://www.w3.org/2000/xmlns/"

    const-string v2, "xmlns:upnp"

    const-string v3, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    invoke-interface {v1, v0, v2, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "http://www.w3.org/2000/xmlns/"

    const-string v2, "xmlns:dc"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    invoke-interface {v1, v0, v2, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "http://www.w3.org/2000/xmlns/"

    const-string v2, "xmlns:sec"

    const-string v3, "http://www.sec.co.kr/"

    invoke-interface {v1, v0, v2, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLContent;->getContainers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 342
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 347
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLContent;->getDescMetadata()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 351
    return-void

    .line 337
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    .line 338
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0, v0, p2, v1, p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateContainer(Lorg/fourthline/cling/support/model/container/Container;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Z)V

    goto :goto_0

    .line 342
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/item/Item;

    .line 343
    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p0, v0, p2, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateItem(Lorg/fourthline/cling/support/model/item/Item;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_1

    .line 347
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DescMeta;

    .line 348
    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {p0, v0, p2, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generateDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_2
.end method

.method public parse(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLContent;
    .locals 3

    .prologue
    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null or empty XML"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/DIDLContent;-><init>()V

    .line 115
    invoke-virtual {p0, v0, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createRootHandler(Lorg/fourthline/cling/support/model/DIDLContent;Lorg/seamless/xml/SAXParser;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;

    .line 117
    sget-object v1, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    const-string v2, "Parsing DIDL XML content"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 118
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 119
    return-object v0
.end method

.method public parseResource(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLContent;
    .locals 2

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 94
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 95
    invoke-static {v1}, Lorg/seamless/util/io/IO;->readLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->parse(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 97
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 95
    :cond_0
    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 98
    :cond_1
    throw v0
.end method

.method protected populateDescMetadata(Lorg/w3c/dom/Element;Lorg/fourthline/cling/support/model/DescMeta;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 566
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/DescMeta;->getMetadata()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_2

    .line 567
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/DescMeta;->getMetadata()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;

    .line 569
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 570
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 582
    :goto_1
    return-void

    .line 571
    :cond_0
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 572
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v4, :cond_1

    .line 573
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-interface {v3, v2, v4}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 576
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 570
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 580
    :cond_2
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown desc metadata content, please override populateDescMetadata(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/DescMeta;->getMetadata()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method
