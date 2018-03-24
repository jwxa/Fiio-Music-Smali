.class final Lcom/fiio/music/util/ct;
.super Ljava/lang/Object;
.source "ToastShortTimeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:J


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/ct;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/fiio/music/util/ct;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/fiio/music/util/ct;->c:J

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fiio/music/util/ct;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/fiio/music/util/ct;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 49
    new-instance v2, Lcom/fiio/music/util/cu;

    invoke-direct {v2, p0, v0}, Lcom/fiio/music/util/cu;-><init>(Lcom/fiio/music/util/ct;Landroid/widget/Toast;)V

    .line 53
    iget-wide v4, p0, Lcom/fiio/music/util/ct;->c:J

    .line 49
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    return-void
.end method
