.class public Lorg/eclipse/jetty/server/handler/ShutdownHandler;
.super Lorg/eclipse/jetty/server/handler/AbstractHandler;
.source "ShutdownHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _exitJvm:Z

.field private final _server:Lorg/eclipse/jetty/server/Server;

.field private final _shutdownToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Server;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_exitJvm:Z

    .line 89
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_server:Lorg/eclipse/jetty/server/Server;

    .line 90
    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_shutdownToken:Ljava/lang/String;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/handler/ShutdownHandler;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->shutdownServer()V

    return-void
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private hasCorrectSecurityToken(Lc/c/c/c;)Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_shutdownToken:Ljava/lang/String;

    const-string v1, "token"

    invoke-interface {p1, v1}, Lc/c/c/c;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private requestFromLocalhost(Lc/c/c/c;)Z
    .locals 2

    .prologue
    .line 142
    const-string v0, "127.0.0.1"

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->getRemoteAddr(Lc/c/c/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private shutdownServer()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->stop()V

    .line 159
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_exitJvm:Z

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method protected getRemoteAddr(Lc/c/c/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-interface {p1}, Lc/c/c/c;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 5

    .prologue
    const/16 v4, 0x191

    const/4 v3, 0x0

    .line 95
    const-string v0, "/shutdown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-interface {p3}, Lc/c/c/c;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const/16 v0, 0x190

    invoke-interface {p4, v0}, Lc/c/c/e;->sendError(I)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0, p3}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->hasCorrectSecurityToken(Lc/c/c/c;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    sget-object v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unauthorized shutdown attempt from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->getRemoteAddr(Lc/c/c/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-interface {p4, v4}, Lc/c/c/e;->sendError(I)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-direct {p0, p3}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->requestFromLocalhost(Lc/c/c/c;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    sget-object v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unauthorized shutdown attempt from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->getRemoteAddr(Lc/c/c/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-interface {p4, v4}, Lc/c/c/e;->sendError(I)V

    goto :goto_0

    .line 118
    :cond_3
    sget-object v0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Shutting down by request from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->getRemoteAddr(Lc/c/c/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    new-instance v0, Lorg/eclipse/jetty/server/handler/i;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/handler/i;-><init>(Lorg/eclipse/jetty/server/handler/ShutdownHandler;)V

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/i;->start()V

    goto :goto_0
.end method

.method public setExitJvm(Z)V
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->_exitJvm:Z

    .line 168
    return-void
.end method
