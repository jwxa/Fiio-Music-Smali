.class final Lcom/fiio/music/util/cw;
.super Ljava/lang/Object;
.source "ToastShortTimeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/util/cv;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/cv;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/cw;->a:Lcom/fiio/music/util/cv;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fiio/music/util/cw;->a:Lcom/fiio/music/util/cv;

    iget-object v0, v0, Lcom/fiio/music/util/cv;->a:Lcom/fiio/music/util/cs;

    invoke-static {v0}, Lcom/fiio/music/util/cs;->a(Lcom/fiio/music/util/cs;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 88
    return-void
.end method
