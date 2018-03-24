.class final Lorg/eclipse/jetty/server/q;
.super Ljava/lang/Object;
.source "ShutdownMonitor.java"


# static fields
.field static a:Lorg/eclipse/jetty/server/ShutdownMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lorg/eclipse/jetty/server/ShutdownMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;-><init>(Lorg/eclipse/jetty/server/p;)V

    sput-object v0, Lorg/eclipse/jetty/server/q;->a:Lorg/eclipse/jetty/server/ShutdownMonitor;

    return-void
.end method
