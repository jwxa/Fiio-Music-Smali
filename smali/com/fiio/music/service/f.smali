.class final Lcom/fiio/music/service/f;
.super Landroid/content/BroadcastReceiver;
.source "KeyControlService.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/service/KeyControlService;


# direct methods
.method constructor <init>(Lcom/fiio/music/service/KeyControlService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v2, 0x1

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 45
    const-string v0, "lipf_debug"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, ">>>>  action is      "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 51
    const-string v1, "lipf_debug"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ">>>> KeyEvent action is      "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-eqz v0, :cond_0

    .line 53
    iget-object v5, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_0
    invoke-static {v5, v1}, Lcom/fiio/music/service/KeyControlService;->a(Lcom/fiio/music/service/KeyControlService;Z)V

    .line 54
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->a(Lcom/fiio/music/service/KeyControlService;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 55
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->b(Lcom/fiio/music/service/KeyControlService;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lcom/fiio/music/service/KeyControlService;->a(Lcom/fiio/music/service/KeyControlService;I)V

    .line 58
    :goto_1
    const-string v1, "KeyControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "   down_val  is   "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v5}, Lcom/fiio/music/service/KeyControlService;->b(Lcom/fiio/music/service/KeyControlService;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v1, "lipf_debug"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, ">>>> KeyEvent down      "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    const-string v1, "com.android.intent.action.HOME_KEY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string v1, "KeyControlService"

    const-string v3, ">>>> home key <<<<"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    :cond_1
    const-string v1, "lock_action_next"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 75
    const-string v1, "lipf_debug"

    const-string v3, ">>>>  enter  music_next      "

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1, v2}, Lcom/fiio/music/service/KeyControlService;->b(Lcom/fiio/music/service/KeyControlService;I)V

    .line 77
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->c(Lcom/fiio/music/service/KeyControlService;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->r()V

    .line 89
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {}, Lcom/fiio/music/service/KeyControlService;->a()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->a(Lcom/fiio/music/service/KeyControlService;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->b(Lcom/fiio/music/service/KeyControlService;)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 90
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 91
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    .line 93
    const/16 v3, 0x57

    if-eq v3, v1, :cond_3

    const/16 v3, 0x114

    if-ne v3, v1, :cond_a

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1, v2}, Lcom/fiio/music/service/KeyControlService;->b(Lcom/fiio/music/service/KeyControlService;I)V

    .line 95
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->c(Lcom/fiio/music/service/KeyControlService;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->r()V

    .line 135
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 136
    invoke-static {}, Lcom/fiio/music/e/a/b;->a()Lcom/fiio/music/e/a/b;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/fiio/music/e/a/b;->a(III)V

    .line 137
    :cond_5
    :goto_4
    return-void

    :cond_6
    move v1, v3

    .line 53
    goto/16 :goto_0

    .line 57
    :cond_7
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1, v3}, Lcom/fiio/music/service/KeyControlService;->a(Lcom/fiio/music/service/KeyControlService;I)V

    goto/16 :goto_1

    .line 78
    :cond_8
    const-string v1, "lock_action_prve"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 79
    const-string v1, "lipf_debug"

    const-string v3, ">>>>  enter  music_prev"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1, v2}, Lcom/fiio/music/service/KeyControlService;->b(Lcom/fiio/music/service/KeyControlService;I)V

    .line 81
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->c(Lcom/fiio/music/service/KeyControlService;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->s()V

    goto :goto_2

    .line 82
    :cond_9
    const-string v1, "lock_action_start"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    const-string v1, "lipf_debug"

    const-string v3, ">>>>  enter  music_play or pause  "

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v1, " KeyControlService \u63a5\u6536\u5230\u64ad\u653e\u6682\u505c\u5e7f\u64ad  pauseOrPlayer 2 "

    invoke-static {v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1, v7}, Lcom/fiio/music/service/KeyControlService;->b(Lcom/fiio/music/service/KeyControlService;I)V

    .line 86
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->c(Lcom/fiio/music/service/KeyControlService;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->t()V

    goto/16 :goto_2

    .line 96
    :cond_a
    const/16 v3, 0x4f

    if-ne v3, v1, :cond_b

    .line 97
    const-string v1, " KeyControlService \u63a5\u6536\u5230\u64ad\u653e\u6682\u505c\u5e7f\u64ad  pauseOrPlayer 3 "

    invoke-static {v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->c(Lcom/fiio/music/service/KeyControlService;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->t()V

    goto :goto_3

    .line 99
    :cond_b
    const/16 v3, 0x55

    if-eq v3, v1, :cond_c

    const/16 v3, 0x115

    if-eq v3, v1, :cond_c

    .line 100
    const/16 v3, 0x7e

    if-eq v3, v1, :cond_c

    const/16 v3, 0x7f

    if-ne v3, v1, :cond_10

    .line 101
    :cond_c
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1, v7}, Lcom/fiio/music/service/KeyControlService;->b(Lcom/fiio/music/service/KeyControlService;I)V

    .line 102
    sget-boolean v1, Lcom/fiio/music/activity/PlayerMainActivity;->isActive:Z

    if-nez v1, :cond_d

    sget-boolean v1, Lcom/fiio/music/activity/LockScreenActivity;->b:Z

    if-eqz v1, :cond_e

    .line 103
    :cond_d
    const-string v1, " KeyControlService \u63a5\u6536\u5230\u64ad\u653e\u6682\u505c\u5e7f\u64ad  FLAG_CHANGED_PAUSE_TO_PLAY_AFTER_SEEK_TO  "

    invoke-static {v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    new-instance v2, Landroid/content/Intent;

    .line 105
    const-string v3, "com.fiio.music.player.brocast"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    const-string v3, "flag"

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Lcom/fiio/music/service/KeyControlService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 108
    :cond_e
    const-string v1, " KeyControlService \u63a5\u6536\u5230\u64ad\u653e\u6682\u505c\u5e7f\u64ad  pauseOrPlayer  "

    invoke-static {v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 109
    const/16 v1, 0x1f4

    invoke-static {v1}, Lcom/fiio/music/util/bd;->a(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 110
    const-string v0, "sin"

    const-string v1, "return"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 113
    :cond_f
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->c(Lcom/fiio/music/service/KeyControlService;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->t()V

    goto/16 :goto_3

    .line 115
    :cond_10
    const/16 v3, 0x58

    if-eq v3, v1, :cond_11

    const/16 v3, 0x116

    if-ne v3, v1, :cond_4

    .line 116
    :cond_11
    const-string v1, " KeyControlService \u63a5\u6536\u5230\u64ad\u653e\u6682\u505c\u5e7f\u64ad  previousPlayer  "

    invoke-static {v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->c(Lcom/fiio/music/service/KeyControlService;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->o()I

    move-result v1

    const/16 v3, 0x2710

    if-gt v1, v3, :cond_13

    .line 121
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->c(Lcom/fiio/music/service/KeyControlService;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->s()V

    .line 131
    :cond_12
    :goto_5
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1, v2}, Lcom/fiio/music/service/KeyControlService;->b(Lcom/fiio/music/service/KeyControlService;I)V

    goto/16 :goto_3

    .line 123
    :cond_13
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->c(Lcom/fiio/music/service/KeyControlService;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    if-ne v1, v7, :cond_14

    .line 124
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->c(Lcom/fiio/music/service/KeyControlService;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->t()V

    .line 125
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->d(Lcom/fiio/music/service/KeyControlService;)V

    goto :goto_5

    .line 126
    :cond_14
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->c(Lcom/fiio/music/service/KeyControlService;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_12

    .line 127
    iget-object v1, p0, Lcom/fiio/music/service/f;->a:Lcom/fiio/music/service/KeyControlService;

    invoke-static {v1}, Lcom/fiio/music/service/KeyControlService;->d(Lcom/fiio/music/service/KeyControlService;)V

    goto :goto_5
.end method
