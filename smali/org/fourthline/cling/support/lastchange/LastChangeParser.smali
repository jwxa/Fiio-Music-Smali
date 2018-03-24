.class public abstract Lorg/fourthline/cling/support/lastchange/LastChangeParser;
.super Lorg/seamless/xml/SAXParser;
.source "LastChangeParser.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/seamless/xml/SAXParser;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected buildDOM(Lorg/fourthline/cling/support/lastchange/Event;)Lorg/w3c/dom/Document;
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 194
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 196
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 197
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->generateRoot(Lorg/fourthline/cling/support/lastchange/Event;Lorg/w3c/dom/Document;)V

    .line 199
    return-object v0
.end method

.method protected createValue(Ljava/lang/String;[Ljava/util/Map$Entry;)Lorg/fourthline/cling/support/lastchange/EventedValue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->getEventedVariables()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 74
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, [Ljava/util/Map$Entry;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 77
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/lastchange/EventedValue;

    goto :goto_0
.end method

.method public generate(Lorg/fourthline/cling/support/lastchange/Event;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->buildDOM(Lorg/fourthline/cling/support/lastchange/Event;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/model/XMLUtil;->documentToFragmentString(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected generateEventedValue(Lorg/fourthline/cling/support/lastchange/EventedValue;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 6

    .prologue
    .line 221
    invoke-virtual {p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getName()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getAttributes()[Ljava/util/Map$Entry;

    move-result-object v3

    .line 223
    if-eqz v3, :cond_0

    array-length v1, v3

    if-lez v1, :cond_0

    .line 224
    invoke-static {p2, p3, v0}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 225
    array-length v5, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v5, :cond_1

    .line 229
    :cond_0
    return-void

    .line 225
    :cond_1
    aget-object v1, v3, v2

    .line 226
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/seamless/xml/DOMParser;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method protected generateInstanceIDs(Lorg/fourthline/cling/support/lastchange/Event;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 5

    .prologue
    .line 209
    invoke-virtual {p1}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    return-void

    .line 209
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/lastchange/InstanceID;

    .line 210
    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getId()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 211
    sget-object v2, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->InstanceID:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {v2}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p3, v2}, Lorg/fourthline/cling/model/XMLUtil;->appendNewElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 212
    sget-object v3, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->val:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {v3}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getId()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/lastchange/EventedValue;

    .line 215
    invoke-virtual {p0, v0, p2, v2}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->generateEventedValue(Lorg/fourthline/cling/support/lastchange/EventedValue;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method protected generateRoot(Lorg/fourthline/cling/support/lastchange/Event;Lorg/w3c/dom/Document;)V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->Event:Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/LastChangeParser$CONSTANTS;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 204
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 205
    invoke-virtual {p0, p1, p2, v0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->generateInstanceIDs(Lorg/fourthline/cling/support/lastchange/Event;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 206
    return-void
.end method

.method protected getEventedVariables()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 70
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method protected abstract getNamespace()Ljava/lang/String;
.end method

.method public parse(Ljava/lang/String;)Lorg/fourthline/cling/support/lastchange/Event;
    .locals 7

    .prologue
    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null or empty XML"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    new-instance v1, Lorg/fourthline/cling/support/lastchange/Event;

    invoke-direct {v1}, Lorg/fourthline/cling/support/lastchange/Event;-><init>()V

    .line 107
    new-instance v0, Lorg/fourthline/cling/support/lastchange/b;

    invoke-direct {v0, p0, v1, p0}, Lorg/fourthline/cling/support/lastchange/b;-><init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;Lorg/fourthline/cling/support/lastchange/Event;Lorg/seamless/xml/SAXParser;)V

    .line 109
    sget-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    sget-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    const-string v2, "Parsing \'LastChange\' event XML content"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 111
    sget-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    const-string v2, "===================================== \'LastChange\' BEGIN ============================================"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 112
    sget-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 113
    sget-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    const-string v2, "====================================== \'LastChange\' END  ============================================"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 115
    :cond_2
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 117
    sget-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parsed event with instances IDs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {v1}, Lorg/fourthline/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 127
    :cond_4
    return-object v1

    .line 119
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/lastchange/InstanceID;

    .line 120
    sget-object v3, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "InstanceID \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getId()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' has values: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/lastchange/EventedValue;

    .line 122
    sget-object v4, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parseResource(Ljava/lang/String;)Lorg/fourthline/cling/support/lastchange/Event;
    .locals 2

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 94
    invoke-static {v1}, Lorg/seamless/util/io/IO;->readLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;->parse(Ljava/lang/String;)Lorg/fourthline/cling/support/lastchange/Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 96
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 94
    :cond_0
    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 97
    :cond_1
    throw v0
.end method
