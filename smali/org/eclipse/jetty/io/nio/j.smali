.class final Lorg/eclipse/jetty/io/nio/j;
.super Ljava/lang/Object;
.source "SslConnection.java"


# instance fields
.field final a:Lorg/eclipse/jetty/io/nio/NIOBuffer;

.field final b:Lorg/eclipse/jetty/io/nio/NIOBuffer;

.field final c:Lorg/eclipse/jetty/io/nio/NIOBuffer;


# direct methods
.method constructor <init>(II)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/j;->a:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 83
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/j;->b:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 84
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    invoke-direct {v0, p2}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/j;->c:Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 85
    return-void
.end method
