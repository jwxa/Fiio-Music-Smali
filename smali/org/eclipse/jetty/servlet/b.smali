.class final Lorg/eclipse/jetty/servlet/b;
.super Lorg/eclipse/jetty/servlet/Holder$HolderConfig;
.source "FilterHolder.java"

# interfaces
.implements Lc/c/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder",
        "<",
        "Lc/c/e;",
        ">.HolderConfig;",
        "Lc/c/g;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/servlet/FilterHolder;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/b;->a:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderConfig;-><init>(Lorg/eclipse/jetty/servlet/Holder;)V

    return-void
.end method
