.class final Lcom/c/a/t;
.super Landroid/os/HandlerThread;
.source "Dispatcher.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 540
    const-string v0, "Picasso-Dispatcher"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 541
    return-void
.end method
