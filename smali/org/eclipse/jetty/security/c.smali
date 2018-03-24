.class final Lorg/eclipse/jetty/security/c;
.super Ljava/lang/Object;
.source "SecurityHandler.java"

# interfaces
.implements Lc/c/c/n;


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/security/SecurityHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/security/SecurityHandler;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lorg/eclipse/jetty/security/c;->a:Lorg/eclipse/jetty/security/SecurityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public final a(Lc/c/c/m;)V
    .locals 3

    .prologue
    .line 311
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    .line 312
    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p1}, Lc/c/c/m;->a()Lc/c/c/g;

    move-result-object v0

    const-string v1, "org.eclipse.jetty.security.sessionKnownOnlytoAuthenticated"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lc/c/c/g;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
