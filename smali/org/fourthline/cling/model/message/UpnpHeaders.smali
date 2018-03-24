.class public Lorg/fourthline/cling/model/message/UpnpHeaders;
.super Lorg/seamless/http/Headers;
.source "UpnpHeaders.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected parsedHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/fourthline/cling/model/message/UpnpHeaders;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/seamless/http/Headers;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/seamless/http/Headers;-><init>(Ljava/io/ByteArrayInputStream;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/seamless/http/Headers;-><init>(Ljava/util/Map;)V

    .line 45
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 104
    invoke-super {p0, p1, p2}, Lorg/seamless/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lorg/seamless/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->addParsedValue(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected addParsedValue(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding parsed header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 88
    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 90
    iget-object v1, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 116
    invoke-super {p0}, Lorg/seamless/http/Headers;->clear()V

    .line 117
    return-void
.end method

.method public containsKey(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->parseHeaders()V

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->parseHeaders()V

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getAsArray(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)[Lorg/fourthline/cling/model/message/header/UpnpHeader;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->parseHeaders()V

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/message/header/UpnpHeader;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/message/header/UpnpHeader;

    :goto_0
    return-object v0

    .line 145
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/fourthline/cling/model/message/header/UpnpHeader;

    goto :goto_0
.end method

.method public getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Lorg/fourthline/cling/model/message/header/UpnpHeader;
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getAsArray(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)[Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 150
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getAsArray(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)[Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    .line 149
    goto :goto_0
.end method

.method public getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader;",
            ">(",
            "Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;",
            "Ljava/lang/Class",
            "<TH;>;)TH;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getAsArray(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)[Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v3

    .line 156
    array-length v1, v3

    if-nez v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object v0

    .line 158
    :cond_1
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 160
    goto :goto_0

    .line 158
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public getFirstHeaderString(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public log()V
    .locals 6

    .prologue
    .line 172
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    const-string v1, "############################ RAW HEADERS ###########################"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 180
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 181
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    const-string v1, "########################## PARSED HEADERS ##########################"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 189
    :cond_2
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    const-string v1, "####################################################################"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 191
    :cond_3
    return-void

    .line 174
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    sget-object v3, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "=== NAME : "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    sget-object v3, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VALUE: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    sget-object v2, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "=== TYPE: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/header/UpnpHeader;

    .line 185
    sget-object v3, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HEADER: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected parseHeaders()V
    .locals 7

    .prologue
    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 54
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parsing all HTTP headers for known UPnP headers: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    return-void

    .line 56
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    move-result-object v1

    .line 61
    if-nez v1, :cond_3

    .line 62
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring non-UPNP HTTP header: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    invoke-static {v1, v0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->newInstance(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/String;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v4

    .line 69
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/fourthline/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    .line 70
    :cond_5
    sget-object v4, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 71
    sget-object v4, Lorg/fourthline/cling/model/message/UpnpHeaders;->log:Ljava/util/logging/Logger;

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring known but irrelevant header (value violates the UDA specification?) \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 74
    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 75
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_6
    invoke-virtual {p0, v1, v4}, Lorg/fourthline/cling/model/message/UpnpHeaders;->addParsedValue(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    goto :goto_1
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 98
    invoke-super {p0, p1, p2}, Lorg/seamless/http/Headers;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    .line 110
    invoke-super {p0, p1}, Lorg/seamless/http/Headers;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;)V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/seamless/http/Headers;->remove(Ljava/lang/Object;)Ljava/util/List;

    .line 137
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/fourthline/cling/model/message/UpnpHeaders;->parsedHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    return-void
.end method
