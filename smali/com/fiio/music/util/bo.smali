.class final Lcom/fiio/music/util/bo;
.super Ljava/lang/Object;
.source "OnlineFeedBackAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/util/bn;

.field private final synthetic b:Z

.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/bn;ZLandroid/app/Activity;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/bo;->a:Lcom/fiio/music/util/bn;

    iput-boolean p2, p0, Lcom/fiio/music/util/bo;->b:Z

    iput-object p3, p0, Lcom/fiio/music/util/bo;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/fiio/music/util/bo;->d:Lcom/fiio/music/custom/f;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/fiio/music/util/bo;->b:Z

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.feedback.success"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/fiio/music/util/bo;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    iget-object v0, p0, Lcom/fiio/music/util/bo;->d:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 52
    return-void

    .line 48
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.feedback.fail"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
