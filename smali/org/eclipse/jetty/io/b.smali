.class final Lorg/eclipse/jetty/io/b;
.super Ljava/lang/ThreadLocal;
.source "ThreadLocalBuffers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/io/ThreadLocalBuffers;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/ThreadLocalBuffers;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lorg/eclipse/jetty/io/b;->a:Lorg/eclipse/jetty/io/ThreadLocalBuffers;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;-><init>()V

    return-object v0
.end method
