.class final Lorg/apache/http/conn/scheme/b;
.super Lorg/apache/http/conn/scheme/d;
.source "SchemeLayeredSocketFactoryAdaptor.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# direct methods
.method constructor <init>(Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/http/conn/scheme/d;-><init>(Lorg/apache/http/conn/scheme/SocketFactory;)V

    .line 47
    iput-object p1, p0, Lorg/apache/http/conn/scheme/b;->a:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .line 48
    return-void
.end method


# virtual methods
.method public final createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/http/conn/scheme/b;->a:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
