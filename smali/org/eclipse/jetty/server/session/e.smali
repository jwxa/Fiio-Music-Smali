.class final Lorg/eclipse/jetty/server/session/e;
.super Ljava/util/TimerTask;
.source "JDBCSessionIdManager.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/e;->a:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/e;->a:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->access$000(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;)V

    .line 358
    return-void
.end method
