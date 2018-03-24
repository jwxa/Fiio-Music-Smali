.class final Lorg/eclipse/jetty/server/handler/b;
.super Ljava/io/IOException;
.source "ConnectHandler.java"


# instance fields
.field final synthetic a:Ljava/lang/InterruptedException;

.field final synthetic b:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;Ljava/lang/InterruptedException;)V
    .locals 1

    .prologue
    .line 680
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/b;->b:Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/b;->a:Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 681
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/b;->a:Ljava/lang/InterruptedException;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/b;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 682
    return-void
.end method
