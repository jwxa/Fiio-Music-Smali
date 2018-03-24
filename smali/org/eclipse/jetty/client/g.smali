.class final Lorg/eclipse/jetty/client/g;
.super Ljava/io/IOException;
.source "HttpDestination.java"


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lorg/eclipse/jetty/client/HttpDestination;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/client/HttpDestination;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 486
    iput-object p1, p0, Lorg/eclipse/jetty/client/g;->b:Lorg/eclipse/jetty/client/HttpDestination;

    iput-object p3, p0, Lorg/eclipse/jetty/client/g;->a:Ljava/lang/Exception;

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->a:Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/g;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
