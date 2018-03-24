.class final Lorg/eclipse/jetty/servlet/g;
.super Lc/c/ao;
.source "ServletHolder.java"


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lorg/eclipse/jetty/servlet/ServletHolder;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 484
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/g;->b:Lorg/eclipse/jetty/servlet/ServletHolder;

    iput-object p3, p0, Lorg/eclipse/jetty/servlet/g;->a:Ljava/lang/Throwable;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lc/c/ao;-><init>(Ljava/lang/String;B)V

    .line 486
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/g;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/g;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 487
    return-void
.end method
