.class final Lorg/eclipse/jetty/client/i;
.super Lorg/eclipse/jetty/util/thread/Timeout$Task;
.source "HttpExchange.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/client/HttpDestination;

.field final synthetic b:Lorg/eclipse/jetty/client/HttpExchange;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/client/HttpExchange;Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 0

    .prologue
    .line 1066
    iput-object p1, p0, Lorg/eclipse/jetty/client/i;->b:Lorg/eclipse/jetty/client/HttpExchange;

    iput-object p2, p0, Lorg/eclipse/jetty/client/i;->a:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final expired()V
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lorg/eclipse/jetty/client/i;->b:Lorg/eclipse/jetty/client/HttpExchange;

    iget-object v1, p0, Lorg/eclipse/jetty/client/i;->a:Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->expire(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 1071
    return-void
.end method
