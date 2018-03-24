.class final Lorg/eclipse/jetty/server/session/b;
.super Ljava/lang/Object;
.source "AbstractSessionManager.java"

# interfaces
.implements Lc/c/al;


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/session/AbstractSessionManager;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/b;->a:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/b;->a:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionCookie:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/b;->a:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_httpOnly:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/b;->a:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_secureCookies:Z

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/b;->a:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_maxCookieAge:I

    return v0
.end method
