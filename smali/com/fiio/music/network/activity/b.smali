.class final Lcom/fiio/music/network/activity/b;
.super Landroid/os/Handler;
.source "SearchLrcActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/network/activity/SearchLrcActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/network/activity/SearchLrcActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    .line 88
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    :pswitch_0
    return-void

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$0(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 101
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 102
    const/4 v0, 0x0

    .line 104
    if-eqz v1, :cond_0

    .line 105
    const-string v2, "coverurl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    const-string v0, "coverurl"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 109
    :goto_1
    const-string v0, "SearchLrcActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FINDLRC coverUrl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    .line 114
    iget-object v2, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$1(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 116
    iget-object v2, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$2(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v2, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$3(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v2, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$4(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$5(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$6(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$0(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 123
    new-instance v2, Lcom/fiio/music/network/fragment/SearchLrcFragment;

    .line 124
    iget-object v3, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    .line 123
    invoke-direct {v2, v3, v0, v1}, Lcom/fiio/music/network/fragment/SearchLrcFragment;-><init>(Landroid/content/Context;Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$0(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Lcom/fiio/music/network/adapter/SearchLrcFragmentPageAdapter;

    .line 127
    iget-object v1, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v1}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$7(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$0(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/List;

    move-result-object v2

    .line 126
    invoke-direct {v0, v1, v2}, Lcom/fiio/music/network/adapter/SearchLrcFragmentPageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    .line 128
    iget-object v1, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v1}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$8(Lcom/fiio/music/network/activity/SearchLrcActivity;)Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 129
    iget-object v0, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$8(Lcom/fiio/music/network/activity/SearchLrcActivity;)Lcom/fiio/music/network/widget/MySlideMoothViewpage;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fiio/music/network/widget/MySlideMoothViewpage;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/fiio/music/network/activity/b;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$9(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    :cond_0
    move-object v1, v0

    goto/16 :goto_1

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
