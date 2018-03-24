.class final Lorg/eclipse/jetty/io/nio/a;
.super Ljava/lang/Object;
.source "SelectChannelEndPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/a;->a:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/a;->a:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->handle()V

    return-void
.end method
