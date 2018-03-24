.class final Lcom/fiio/music/activity/fh;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;

.field private final synthetic b:Landroid/widget/Button;

.field private final synthetic c:Landroid/widget/EditText;

.field private final synthetic d:Landroid/widget/EditText;

.field private final synthetic e:Landroid/app/Dialog;

.field private final synthetic f:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fh;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/fh;->b:Landroid/widget/Button;

    iput-object p3, p0, Lcom/fiio/music/activity/fh;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/fiio/music/activity/fh;->d:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/fiio/music/activity/fh;->e:Landroid/app/Dialog;

    iput-object p6, p0, Lcom/fiio/music/activity/fh;->f:Landroid/widget/Button;

    .line 3323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 3327
    iget-object v0, p0, Lcom/fiio/music/activity/fh;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 3328
    iget-object v0, p0, Lcom/fiio/music/activity/fh;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3329
    iget-object v1, p0, Lcom/fiio/music/activity/fh;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3331
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/fh;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fh;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v2, 0x7f0c00f1

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3332
    const/4 v2, 0x0

    .line 3331
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3332
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3346
    :cond_1
    :goto_0
    return-void

    .line 3335
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3336
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3337
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3338
    iget-object v3, p0, Lcom/fiio/music/activity/fh;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v4, p0, Lcom/fiio/music/activity/fh;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->loadLyric(Lcom/fiio/music/entity/Song;Ljava/util/List;)V

    .line 3340
    iget-object v2, p0, Lcom/fiio/music/activity/fh;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2, v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$93(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    iget-object v0, p0, Lcom/fiio/music/activity/fh;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 3343
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/fh;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 3344
    iget-object v0, p0, Lcom/fiio/music/activity/fh;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
