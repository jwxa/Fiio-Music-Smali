.class final Lorg/apache/http/impl/conn/tsccm/b;
.super Ljava/lang/Object;
.source "RouteSpecificPool.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# instance fields
.field final synthetic a:Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/b;->a:Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/b;->a:Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    iget v0, v0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    return v0
.end method
