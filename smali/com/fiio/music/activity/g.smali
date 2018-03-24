.class final Lcom/fiio/music/activity/g;
.super Landroid/os/Handler;
.source "AdActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/AdActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/AdActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/g;->a:Lcom/fiio/music/activity/AdActivity;

    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    if-gez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/fiio/music/activity/g;->a:Lcom/fiio/music/activity/AdActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/AdActivity;->finish()V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/g;->a:Lcom/fiio/music/activity/AdActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AdActivity;->a(Lcom/fiio/music/activity/AdActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
