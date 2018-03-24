.class public Lorg/eclipse/jetty/io/NetworkTrafficListener$Empty;
.super Ljava/lang/Object;
.source "NetworkTrafficListener.java"

# interfaces
.implements Lorg/eclipse/jetty/io/NetworkTrafficListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closed(Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public incoming(Ljava/net/Socket;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public opened(Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public outgoing(Ljava/net/Socket;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
