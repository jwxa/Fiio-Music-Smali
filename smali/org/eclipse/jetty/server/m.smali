.class final Lorg/eclipse/jetty/server/m;
.super Lorg/eclipse/jetty/io/ByteArrayEndPoint;
.source "LocalConnector.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/l;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/l;[B)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lorg/eclipse/jetty/server/m;->a:Lorg/eclipse/jetty/server/l;

    const/16 v0, 0x400

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public final setConnection(Lorg/eclipse/jetty/io/Connection;)V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/m;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/m;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/eclipse/jetty/server/m;->a:Lorg/eclipse/jetty/server/l;

    iget-object v0, v0, Lorg/eclipse/jetty/server/l;->a:Lorg/eclipse/jetty/server/LocalConnector;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/m;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/server/LocalConnector;->connectionUpgraded(Lorg/eclipse/jetty/io/Connection;Lorg/eclipse/jetty/io/Connection;)V

    .line 120
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/ByteArrayEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 121
    return-void
.end method
