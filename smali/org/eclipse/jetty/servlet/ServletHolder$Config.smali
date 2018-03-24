.class public Lorg/eclipse/jetty/servlet/ServletHolder$Config;
.super Lorg/eclipse/jetty/servlet/Holder$HolderConfig;
.source "ServletHolder.java"

# interfaces
.implements Lc/c/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder",
        "<",
        "Lc/c/q;",
        ">.HolderConfig;",
        "Lc/c/r;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ServletHolder;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Config;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderConfig;-><init>(Lorg/eclipse/jetty/servlet/Holder;)V

    return-void
.end method


# virtual methods
.method public getServletName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Config;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
