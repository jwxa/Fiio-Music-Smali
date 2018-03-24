.class final Lcom/fiio/music/util/q;
.super Ljava/lang/Object;
.source "ExitDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/util/p;

.field private final synthetic b:Lcom/fiio/music/custom/f;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/p;Lcom/fiio/music/custom/f;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/q;->a:Lcom/fiio/music/util/p;

    iput-object p2, p0, Lcom/fiio/music/util/q;->b:Lcom/fiio/music/custom/f;

    iput-object p3, p0, Lcom/fiio/music/util/q;->c:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fiio/music/util/q;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 43
    iget-object v0, p0, Lcom/fiio/music/util/q;->c:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 58
    iget-object v0, p0, Lcom/fiio/music/util/q;->c:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->cancelAutoShutdown()V

    .line 59
    iget-object v0, p0, Lcom/fiio/music/util/q;->c:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->e()V

    .line 63
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/a/c;->b()V

    .line 64
    return-void
.end method
