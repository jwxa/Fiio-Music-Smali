.class final Lorg/eclipse/jetty/server/session/d;
.super Ljava/util/TimerTask;
.source "HashSessionManager.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/session/HashSessionManager;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/session/HashSessionManager;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/d;->a:Lorg/eclipse/jetty/server/session/HashSessionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/d;->a:Lorg/eclipse/jetty/server/session/HashSessionManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->scavenge()V

    .line 285
    return-void
.end method
