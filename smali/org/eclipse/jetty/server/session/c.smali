.class final Lorg/eclipse/jetty/server/session/c;
.super Ljava/util/TimerTask;
.source "HashSessionManager.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/session/HashSessionManager;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/session/HashSessionManager;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/c;->a:Lorg/eclipse/jetty/server/session/HashSessionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/c;->a:Lorg/eclipse/jetty/server/session/HashSessionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/session/HashSessionManager;->saveSessions(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 233
    sget-object v1, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
