.class public Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;
.super Lorg/seamless/xml/SAXParser$Handler;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/SAXParser$Handler",
        "<",
        "Lorg/fourthline/cling/support/model/DescMeta;",
        ">;"
    }
.end annotation


# instance fields
.field protected current:Lorg/w3c/dom/Element;

.field final synthetic this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/DescMeta;Lorg/seamless/xml/SAXParser$Handler;)V
    .locals 1

    .prologue
    .line 1026
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    .line 1027
    invoke-direct {p0, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser$Handler;)V

    .line 1028
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/DescMeta;->createMetadataDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/fourthline/cling/support/model/DescMeta;->setMetadata(Ljava/lang/Object;)V

    .line 1029
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->getInstance()Lorg/fourthline/cling/support/model/DescMeta;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DescMeta;->getMetadata()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->current:Lorg/w3c/dom/Element;

    .line 1030
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1055
    invoke-super {p0, p1, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p0, p1, p2, p3}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    :goto_0
    return-void

    .line 1059
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\t\\n\\x0B\\f\\r\\s]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1060
    iget-object v1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->current:Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->getInstance()Lorg/fourthline/cling/support/model/DescMeta;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DescMeta;->getMetadata()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1062
    :cond_1
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->current:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    iput-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->current:Lorg/w3c/dom/Element;

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->characters:Ljava/lang/StringBuilder;

    .line 1066
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->attributes:Lorg/xml/sax/Attributes;

    goto :goto_0
.end method

.method public bridge synthetic getInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->getInstance()Lorg/fourthline/cling/support/model/DescMeta;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Lorg/fourthline/cling/support/model/DescMeta;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/support/model/DescMeta",
            "<",
            "Lorg/w3c/dom/Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1034
    invoke-super {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DescMeta;

    return-object v0
.end method

.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1071
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "desc"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5

    .prologue
    .line 1039
    invoke-super {p0, p1, p2, p3, p4}, Lorg/seamless/xml/SAXParser$Handler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1041
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->getInstance()Lorg/fourthline/cling/support/model/DescMeta;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DescMeta;->getMetadata()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1042
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1049
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->current:Lorg/w3c/dom/Element;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1050
    iput-object v1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;->current:Lorg/w3c/dom/Element;

    .line 1051
    return-void

    .line 1044
    :cond_0
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    .line 1045
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    .line 1046
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1043
    invoke-interface {v1, v2, v3, v4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
