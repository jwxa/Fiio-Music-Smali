.class public abstract Lorg/eclipse/jetty/http/HttpParser$EventHandler;
.super Ljava/lang/Object;
.source "HttpParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract content(Lorg/eclipse/jetty/io/Buffer;)V
.end method

.method public earlyEOF()V
    .locals 0

    .prologue
    .line 1269
    return-void
.end method

.method public headerComplete()V
    .locals 0

    .prologue
    .line 1243
    return-void
.end method

.method public messageComplete(J)V
    .locals 0

    .prologue
    .line 1247
    return-void
.end method

.method public parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .prologue
    .line 1254
    return-void
.end method

.method public abstract startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
.end method

.method public abstract startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
.end method
