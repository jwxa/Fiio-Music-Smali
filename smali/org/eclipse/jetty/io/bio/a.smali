.class final Lorg/eclipse/jetty/io/bio/a;
.super Ljava/lang/IllegalStateException;
.source "StringEndPoint.java"


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lorg/eclipse/jetty/io/bio/StringEndPoint;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/bio/StringEndPoint;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 81
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/a;->b:Lorg/eclipse/jetty/io/bio/StringEndPoint;

    iput-object p3, p0, Lorg/eclipse/jetty/io/bio/a;->a:Ljava/lang/Exception;

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->a:Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/bio/a;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
