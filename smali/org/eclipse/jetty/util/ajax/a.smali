.class final Lorg/eclipse/jetty/util/ajax/a;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Convertible;


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lorg/eclipse/jetty/util/ajax/JSON;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/util/ajax/JSON;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/a;->c:Lorg/eclipse/jetty/util/ajax/JSON;

    iput-object p2, p0, Lorg/eclipse/jetty/util/ajax/a;->a:Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    iput-object p3, p0, Lorg/eclipse/jetty/util/ajax/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJSON(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public final toJSON(Lorg/eclipse/jetty/util/ajax/JSON$Output;)V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/a;->a:Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;->toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V

    .line 377
    return-void
.end method
