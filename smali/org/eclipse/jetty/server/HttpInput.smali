.class public Lorg/eclipse/jetty/server/HttpInput;
.super Lc/c/y;
.source "HttpInput.java"


# instance fields
.field protected final _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field protected final _parser:Lorg/eclipse/jetty/http/HttpParser;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lc/c/y;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/eclipse/jetty/server/HttpInput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 38
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    iput-object v0, p0, Lorg/eclipse/jetty/server/HttpInput;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    .line 39
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpInput;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    new-array v0, v1, [B

    .line 49
    invoke-virtual {p0, v0, v2, v1}, Lorg/eclipse/jetty/server/HttpInput;->read([BII)I

    move-result v1

    .line 50
    if-gez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4

    .prologue
    .line 60
    const/4 v0, -0x1

    .line 61
    iget-object v1, p0, Lorg/eclipse/jetty/server/HttpInput;->_parser:Lorg/eclipse/jetty/http/HttpParser;

    iget-object v2, p0, Lorg/eclipse/jetty/server/HttpInput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getMaxIdleTime()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/http/HttpParser;->blockForContent(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    invoke-interface {v1, p1, p2, p3}, Lorg/eclipse/jetty/io/Buffer;->get([BII)I

    move-result v0

    .line 66
    :cond_0
    return v0

    .line 64
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/HttpInput;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isEarlyEOF()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    const-string v1, "early EOF"

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
