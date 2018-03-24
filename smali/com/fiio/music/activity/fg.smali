.class final Lcom/fiio/music/activity/fg;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Lcom/fiio/music/service/l;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$5(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$5(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/z;

    move-result-object v0

    .line 793
    iget-object v1, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$6(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/g/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/z;->b(Lcom/fiio/music/g/a;)V

    .line 795
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/IBinder;)V
    .locals 7

    .prologue
    const v6, 0x7f02059d

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 799
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    check-cast p1, Lcom/fiio/music/service/z;

    invoke-static {v0, p1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$7(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/service/z;)V

    .line 802
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$5(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/z;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$6(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/g/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/z;->a(Lcom/fiio/music/g/a;)V

    .line 803
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 804
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 810
    :goto_0
    const-string v0, "\u64ad\u653e\u754c\u9762\uff0conServiceConnected "

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 812
    if-eq v0, v3, :cond_0

    if-ne v0, v4, :cond_6

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 815
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 844
    :cond_1
    :goto_1
    return-void

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 807
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->a()V

    goto :goto_0

    .line 817
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 818
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 820
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 821
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 823
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 824
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 829
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 830
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 832
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 833
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 835
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 836
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0205a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 838
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 839
    iget-object v0, p0, Lcom/fiio/music/activity/fg;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0205a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method
