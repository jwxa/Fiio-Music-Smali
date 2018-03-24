.class public Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;
.super Lorg/seamless/xml/SAXParser$Handler;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/SAXParser$Handler",
        "<",
        "Lorg/fourthline/cling/support/model/DIDLContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/DIDLContent;Lorg/seamless/xml/SAXParser;)V
    .locals 0

    .prologue
    .line 828
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    .line 829
    invoke-direct {p0, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser;)V

    .line 830
    return-void
.end method


# virtual methods
.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 861
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DIDL-Lite"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLContent;->replaceGenericContainerAndItems()V

    .line 867
    const/4 v0, 0x1

    .line 869
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 834
    invoke-super {p0, p1, p2, p3, p4}, Lorg/seamless/xml/SAXParser$Handler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 836
    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    const-string v0, "container"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 840
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createContainer(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/container/Container;

    move-result-object v1

    .line 841
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLContent;->addContainer(Lorg/fourthline/cling/support/model/container/Container;)Lorg/fourthline/cling/support/model/DIDLContent;

    .line 842
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, v1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createContainerHandler(Lorg/fourthline/cling/support/model/container/Container;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ContainerHandler;

    goto :goto_0

    .line 844
    :cond_2
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 846
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createItem(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v1

    .line 847
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLContent;->addItem(Lorg/fourthline/cling/support/model/item/Item;)Lorg/fourthline/cling/support/model/DIDLContent;

    .line 848
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, v1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createItemHandler(Lorg/fourthline/cling/support/model/item/Item;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$ItemHandler;

    goto :goto_0

    .line 850
    :cond_3
    const-string v0, "desc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, p4}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createDescMeta(Lorg/xml/sax/Attributes;)Lorg/fourthline/cling/support/model/DescMeta;

    move-result-object v1

    .line 853
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/DIDLContent;->addDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;)Lorg/fourthline/cling/support/model/DIDLContent;

    .line 854
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$RootHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-virtual {v0, v1, p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->createDescMetaHandler(Lorg/fourthline/cling/support/model/DescMeta;Lorg/seamless/xml/SAXParser$Handler;)Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DescMetaHandler;

    goto :goto_0
.end method
