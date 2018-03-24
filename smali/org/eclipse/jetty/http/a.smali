.class final Lorg/eclipse/jetty/http/a;
.super Ljava/lang/ThreadLocal;
.source "HttpFields.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/eclipse/jetty/http/g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lorg/eclipse/jetty/http/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/http/g;-><init>(B)V

    return-object v0
.end method
