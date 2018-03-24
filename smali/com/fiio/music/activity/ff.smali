.class final Lcom/fiio/music/activity/ff;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Lcom/fiio/music/util/y;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    .line 2987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2990
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 2991
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$87(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/widget/VolumeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->a()V

    .line 2992
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$87(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/widget/VolumeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->e()V

    .line 2993
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$87(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/widget/VolumeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->g()V

    .line 2994
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$87(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/widget/VolumeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->c()V

    .line 3042
    :cond_0
    :goto_0
    return v1

    .line 2996
    :cond_1
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 2997
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$87(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/widget/VolumeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->a()V

    .line 2998
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$87(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/widget/VolumeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->f()V

    .line 2999
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$87(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/widget/VolumeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->g()V

    .line 3000
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$87(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/widget/VolumeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->c()V

    goto :goto_0

    .line 3003
    :cond_2
    iget-object v3, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$88(Lcom/fiio/music/activity/PlayerMainActivity;Z)V

    .line 3004
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$89(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3005
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$90(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->access$91(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 3008
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$89(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$90(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v1, :cond_10

    .line 3009
    const/16 v0, 0x57

    if-eq v0, p1, :cond_3

    const/16 v0, 0x114

    if-ne v0, p1, :cond_6

    .line 3010
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$92(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 3011
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->r()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 3003
    goto :goto_1

    .line 3007
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$91(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    goto :goto_2

    .line 3012
    :cond_6
    const/16 v0, 0x4f

    if-ne v0, p1, :cond_7

    .line 3013
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->t()V

    goto/16 :goto_0

    .line 3014
    :cond_7
    const/16 v0, 0x55

    if-eq v0, p1, :cond_8

    const/16 v0, 0x115

    if-eq v0, p1, :cond_8

    .line 3015
    const/16 v0, 0x7e

    if-eq v0, p1, :cond_8

    const/16 v0, 0x7f

    if-ne v0, p1, :cond_b

    .line 3016
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->access$92(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 3017
    sget-boolean v0, Lcom/fiio/music/activity/PlayerMainActivity;->isActive:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/fiio/music/activity/LockScreenActivity;->b:Z

    if-nez v0, :cond_9

    .line 3018
    const-string v0, "zxy"

    const-string v2, " KeyControlService \u63a5\u6536\u5230\u64ad\u653e\u6682\u505c\u5e7f\u64ad  FLAG_CHANGED_PAUSE_TO_PLAY_AFTER_SEEK_TO  "

    invoke-static {v0, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->playOrPause()V

    goto/16 :goto_0

    .line 3021
    :cond_9
    const/16 v0, 0x1f4

    invoke-static {v0}, Lcom/fiio/music/util/bd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move v1, v2

    .line 3022
    goto/16 :goto_0

    .line 3024
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->t()V

    goto/16 :goto_0

    .line 3026
    :cond_b
    const/16 v0, 0x58

    if-eq v0, p1, :cond_c

    const/16 v0, 0x116

    if-ne v0, p1, :cond_0

    .line 3027
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->o()I

    move-result v0

    const/16 v3, 0x2710

    if-gt v0, v3, :cond_e

    .line 3028
    const-string v0, "zxy - - -"

    const-string v2, "previousPlayer  in  Playmain~~"

    invoke-static {v0, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->s()V

    .line 3038
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$92(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    goto/16 :goto_0

    .line 3031
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    if-ne v0, v4, :cond_f

    .line 3032
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->t()V

    .line 3033
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$32(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    goto :goto_3

    .line 3034
    :cond_f
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_d

    .line 3035
    iget-object v0, p0, Lcom/fiio/music/activity/ff;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$32(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    goto :goto_3

    :cond_10
    move v1, v2

    .line 3042
    goto/16 :goto_0
.end method
