.class final Lcom/fiio/music/util/cv;
.super Ljava/lang/Object;
.source "ToastShortTimeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/util/cs;

.field private final synthetic b:J


# direct methods
.method constructor <init>(Lcom/fiio/music/util/cs;)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/cv;->a:Lcom/fiio/music/util/cs;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/fiio/music/util/cv;->b:J

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fiio/music/util/cv;->a:Lcom/fiio/music/util/cs;

    invoke-static {v0}, Lcom/fiio/music/util/cs;->a(Lcom/fiio/music/util/cs;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 85
    new-instance v1, Lcom/fiio/music/util/cw;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/cw;-><init>(Lcom/fiio/music/util/cv;)V

    .line 89
    iget-wide v2, p0, Lcom/fiio/music/util/cv;->b:J

    .line 85
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method
