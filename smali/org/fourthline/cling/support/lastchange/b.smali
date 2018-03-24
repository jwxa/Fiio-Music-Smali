.class final Lorg/fourthline/cling/support/lastchange/b;
.super Lorg/seamless/xml/SAXParser$Handler;
.source "LastChangeParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/SAXParser$Handler",
        "<",
        "Lorg/fourthline/cling/support/lastchange/Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/fourthline/cling/support/lastchange/LastChangeParser;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Lorg/fourthline/cling/support/lastchange/Event;Lorg/seamless/xml/SAXParser;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lorg/fourthline/cling/support/lastchange/b;->a:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    .line 133
    invoke-direct {p0, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser;)V

    .line 134
    return-void
.end method


# virtual methods
.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Lorg/seamless/xml/SAXParser$Handler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 143
    sget-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->InstanceID:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {v0, p2}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->equals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->val:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    new-instance v1, Lorg/fourthline/cling/support/lastchange/InstanceID;

    new-instance v2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v2, v0}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/lastchange/InstanceID;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V

    .line 147
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/b;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/lastchange/Event;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Lorg/fourthline/cling/support/lastchange/a;

    iget-object v2, p0, Lorg/fourthline/cling/support/lastchange/b;->a:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    invoke-direct {v0, v2, v1, p0}, Lorg/fourthline/cling/support/lastchange/a;-><init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Lorg/fourthline/cling/support/lastchange/InstanceID;Lorg/seamless/xml/SAXParser$Handler;)V

    .line 151
    :cond_0
    return-void
.end method
