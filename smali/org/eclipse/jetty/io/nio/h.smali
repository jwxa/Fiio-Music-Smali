.class final Lorg/eclipse/jetty/io/nio/h;
.super Ljava/lang/Object;
.source "SelectorManager.java"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/d;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/h;->c:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/h;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/eclipse/jetty/io/nio/h;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/h;->c:Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->dumpKeyState(Ljava/util/List;)V

    .line 957
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/h;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 958
    return-void
.end method
