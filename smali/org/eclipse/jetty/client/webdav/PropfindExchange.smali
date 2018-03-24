.class public Lorg/eclipse/jetty/client/webdav/PropfindExchange;
.super Lorg/eclipse/jetty/client/HttpExchange;
.source "PropfindExchange.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field _propertyExists:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/eclipse/jetty/client/webdav/PropfindExchange;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpExchange;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->_propertyExists:Z

    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->_propertyExists:Z

    return v0
.end method

.method protected onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 42
    sget-object v0, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "PropfindExchange:Status: Exists"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->_propertyExists:Z

    .line 50
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpExchange;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 51
    return-void

    .line 47
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/client/webdav/PropfindExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "PropfindExchange:Status: Not Exists"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
