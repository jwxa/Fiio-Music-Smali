.class final Lorg/apache/http/conn/scheme/a;
.super Lorg/apache/http/conn/scheme/e;
.source "LayeredSocketFactoryAdaptor.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;


# direct methods
.method constructor <init>(Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/http/conn/scheme/e;-><init>(Lorg/apache/http/conn/scheme/SchemeSocketFactory;)V

    .line 44
    iput-object p1, p0, Lorg/apache/http/conn/scheme/a;->a:Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    .line 45
    return-void
.end method


# virtual methods
.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/http/conn/scheme/a;->a:Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
