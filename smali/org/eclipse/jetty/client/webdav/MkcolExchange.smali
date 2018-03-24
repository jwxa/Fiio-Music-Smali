.class public Lorg/eclipse/jetty/client/webdav/MkcolExchange;
.super Lorg/eclipse/jetty/client/CachedExchange;
.source "MkcolExchange.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field exists:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/eclipse/jetty/client/webdav/MkcolExchange;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/client/CachedExchange;-><init>(Z)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->exists:Z

    .line 39
    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->exists:Z

    return v0
.end method

.method protected onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const/16 v0, 0xc9

    if-ne p2, v0, :cond_0

    .line 47
    sget-object v0, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "MkcolExchange:Status: Successfully created resource"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iput-boolean v4, p0, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->exists:Z

    .line 51
    :cond_0
    const/16 v0, 0x195

    if-ne p2, v0, :cond_1

    .line 53
    sget-object v0, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "MkcolExchange:Status: Resource must exist"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iput-boolean v4, p0, Lorg/eclipse/jetty/client/webdav/MkcolExchange;->exists:Z

    .line 57
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/CachedExchange;->onResponseStatus(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 58
    return-void
.end method
