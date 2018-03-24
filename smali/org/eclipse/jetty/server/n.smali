.class final Lorg/eclipse/jetty/server/n;
.super Ljava/io/BufferedReader;
.source "Request.java"


# instance fields
.field final synthetic a:Lc/c/y;

.field final synthetic b:Lorg/eclipse/jetty/server/Request;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/Request;Ljava/io/Reader;Lc/c/y;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lorg/eclipse/jetty/server/n;->b:Lorg/eclipse/jetty/server/Request;

    iput-object p3, p0, Lorg/eclipse/jetty/server/n;->a:Lc/c/y;

    invoke-direct {p0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lorg/eclipse/jetty/server/n;->a:Lc/c/y;

    invoke-virtual {v0}, Lc/c/y;->close()V

    .line 892
    return-void
.end method
