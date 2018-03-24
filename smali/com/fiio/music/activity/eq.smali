.class final Lcom/fiio/music/activity/eq;
.super Landroid/content/BroadcastReceiver;
.source "OnlineFeedBackActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/OnlineFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/OnlineFeedBackActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/eq;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    .line 66
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "intent.getAction() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 72
    :sswitch_0
    const-string v1, "com.fiio.music.feedback.fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v1, "com.fiio.music.feedback.success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/fiio/music/activity/eq;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    const-string v1, "Suggestion"

    invoke-static {v0, v1}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->a(Lcom/fiio/music/activity/OnlineFeedBackActivity;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/fiio/music/activity/eq;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->a(Lcom/fiio/music/activity/OnlineFeedBackActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 77
    iget-object v0, p0, Lcom/fiio/music/activity/eq;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->b(Lcom/fiio/music/activity/OnlineFeedBackActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/fiio/music/activity/eq;->a:Lcom/fiio/music/activity/OnlineFeedBackActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/OnlineFeedBackActivity;->c(Lcom/fiio/music/activity/OnlineFeedBackActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5975c89a -> :sswitch_0
        0x3fdf9abb -> :sswitch_1
    .end sparse-switch
.end method
