.class public Lorg/eclipse/jetty/io/BuffersFactory;
.super Ljava/lang/Object;
.source "BuffersFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuffers(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)Lorg/eclipse/jetty/io/Buffers;
    .locals 7

    .prologue
    .line 25
    if-ltz p5, :cond_0

    .line 26
    new-instance v0, Lorg/eclipse/jetty/io/PooledBuffers;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/io/PooledBuffers;-><init>(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)V

    .line 27
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;-><init>(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;)V

    goto :goto_0
.end method
