.class final Lcom/fiio/music/activity/fy;
.super Landroid/content/BroadcastReceiver;
.source "PlayerMainActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method private constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;B)V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/fy;-><init>(Lcom/fiio/music/activity/PlayerMainActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 902
    const-string v0, "flag"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 905
    if-nez v0, :cond_3

    .line 907
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$52(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 909
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-string v1, "duration"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$57(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 912
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$19(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v8, :cond_2

    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 915
    const-string v0, "media.audio.wzUvLeft"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    if-eqz v0, :cond_0

    .line 917
    const-string v0, "media.audio.OpenUv"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :cond_0
    const-string v0, "media.audio.wzUvLeft"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 920
    const-string v0, "media.audio.wzUvRight"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 922
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v2}, Lcom/fiio/music/util/h;->j(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :cond_1
    invoke-static {v4}, Lcom/fiio/music/util/h;->j(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$73(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/widget/PointerTable2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/widget/PointerTable2;->getFromDegrees()F

    move-result v1

    iget-object v4, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/PlayerMainActivity;->access$73(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/widget/PointerTable2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/widget/PointerTable2;->getFromwDegrees()F

    move-result v7

    iget-object v4, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/PlayerMainActivity;->access$73(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/widget/PointerTable2;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/fiio/music/widget/PointerTable2;->a(FF)V

    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$73(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/widget/PointerTable2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/widget/PointerTable2;->getToDegrees()F

    move-result v2

    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$73(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/widget/PointerTable2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/widget/PointerTable2;->getTowDegrees()F

    move-result v9

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    new-instance v4, Landroid/view/animation/RotateAnimation;

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f800000    # 1.0f

    move v5, v7

    move v6, v9

    move v7, v3

    move v9, v3

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v6, 0x69

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v6, 0x69

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$74(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$75(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1360
    :cond_2
    :goto_1
    return-void

    .line 928
    :cond_3
    if-ne v0, v3, :cond_19

    .line 929
    const-string v0, "\u64ad\u653e\u754c\u9762\u63a5\u6536\u5230 FLAG_PREPARE"

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$31(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 932
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 936
    :goto_2
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-string v0, "song"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$58(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/entity/Song;)V

    .line 937
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 938
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$24(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 942
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/fiio/music/activity/PlayerMainActivity;->curSongList:Ljava/util/List;

    .line 943
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/PlayerMainActivity;->curSongList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$59(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 947
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 948
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->K()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Q()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 949
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/PlayerMainActivity;->curSongList:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bl;->b(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$60(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 953
    :goto_4
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/bl;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$61(Lcom/fiio/music/activity/PlayerMainActivity;Z)V

    .line 954
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v0

    if-lez v0, :cond_5

    .line 955
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$62(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$41(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bz;

    move-result-object v1

    const-string v2, "playMainPageFlag"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/bz;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$40(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 958
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->swipPlayerMainView(I)V

    .line 961
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->isTabAPlayingSong()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 962
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->Y()I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->X()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$63(Lcom/fiio/music/activity/PlayerMainActivity;II)V

    .line 968
    :goto_5
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$66(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 970
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->loadLyric(Lcom/fiio/music/entity/Song;Ljava/util/List;)V

    .line 972
    :cond_7
    const-string v0, "songName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "songName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 973
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    .line 974
    const-string v1, "songName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 975
    const-string v2, "artistName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 973
    invoke-static {v0, v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$67(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$68(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "songName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$69(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "artistName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 978
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$70(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "albumName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 982
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$71(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 983
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getSampleRate()I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getEncodingRate()I

    move-result v2

    iget-object v4, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/entity/Song;->getBitRate()I

    move-result v4

    .line 982
    invoke-static {p1, v1, v2, v4}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    :goto_6
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v8, :cond_9

    .line 989
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 990
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$72(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getSampleRate()I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getEncodingRate()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$1(Lcom/fiio/music/activity/PlayerMainActivity;)V

    .line 998
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-string v1, "duration"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$57(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 999
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-string v1, "currentPosition"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$12(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 1000
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$16(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1002
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->O()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Q()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->K()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1003
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$13(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$14(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$14(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1007
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$14(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/fiio/music/h/e;->a(J)V

    .line 1008
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1010
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->isTabAPlayingSong()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1011
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$64(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->notifyDataAdapterInPupwindow(I)V

    .line 1015
    :goto_8
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1017
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    new-instance v2, Lcom/fiio/music/util/bw;

    invoke-direct {v2, v0}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$34(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/util/bw;)V

    .line 1018
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1019
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$35(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bw;

    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1020
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-static {v0, v1}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1022
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    if-ne v1, v3, :cond_13

    .line 1023
    if-eqz v0, :cond_12

    .line 1024
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    .line 934
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/16 :goto_2

    .line 940
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-string v1, "songId"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$24(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    goto/16 :goto_3

    .line 952
    :cond_d
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/PlayerMainActivity;->curSongList:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bl;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$60(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    goto/16 :goto_4

    .line 964
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$64(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$65(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$63(Lcom/fiio/music/activity/PlayerMainActivity;II)V

    goto/16 :goto_5

    .line 985
    :cond_f
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$71(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v7, v7, v7}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 992
    :cond_10
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$72(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v7, v7}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1013
    :cond_11
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->Y()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->notifyDataAdapterInPupwindow(I)V

    goto/16 :goto_8

    .line 1026
    :cond_12
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    .line 1029
    :cond_13
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    if-ne v1, v10, :cond_15

    .line 1030
    if-eqz v0, :cond_14

    .line 1031
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    .line 1033
    :cond_14
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    .line 1036
    :cond_15
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    if-ne v1, v9, :cond_17

    .line 1037
    if-eqz v0, :cond_16

    .line 1038
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    .line 1040
    :cond_16
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    .line 1043
    :cond_17
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    if-ne v1, v8, :cond_2

    .line 1044
    if-eqz v0, :cond_18

    .line 1045
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    .line 1047
    :cond_18
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    .line 1052
    :cond_19
    if-ne v0, v10, :cond_3c

    .line 1053
    const-string v0, "\u64ad\u653e\u754c\u9762\u63a5\u6536\u5230 FLAG_INIT----\u521d\u59cb\u5316\u64ad\u653e\u4fe1\u606f"

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$31(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1055
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1056
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1060
    :goto_9
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-string v0, "song"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$58(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/entity/Song;)V

    .line 1061
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1062
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$24(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 1066
    :goto_a
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/fiio/music/activity/PlayerMainActivity;->curSongList:Ljava/util/List;

    .line 1069
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1070
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->K()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Q()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1071
    :cond_1a
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/PlayerMainActivity;->curSongList:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bl;->b(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$60(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 1076
    :goto_b
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/bl;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$61(Lcom/fiio/music/activity/PlayerMainActivity;Z)V

    .line 1077
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v0

    if-lez v0, :cond_1b

    .line 1078
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$62(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    :cond_1b
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$41(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bz;

    move-result-object v1

    const-string v2, "playMainPageFlag"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/bz;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$40(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 1081
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->swipPlayerMainView(I)V

    .line 1083
    :cond_1c
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->z()I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 1085
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, v7}, Lcom/fiio/music/activity/PlayerMainActivity;->access$60(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 1089
    :cond_1d
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-ne v0, v3, :cond_2a

    .line 1090
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->Y()I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->X()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$63(Lcom/fiio/music/activity/PlayerMainActivity;II)V

    .line 1099
    :goto_c
    const-string v0, "currentPosition"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1100
    const-string v1, "duration"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1101
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-string v4, "playerMode"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->access$25(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 1102
    const-string v2, "playerState"

    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1103
    iget-object v4, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v4

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/PlayerMainActivity;->access$66(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1105
    iget-object v4, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v5, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v5}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/fiio/music/activity/PlayerMainActivity;->loadLyric(Lcom/fiio/music/entity/Song;Ljava/util/List;)V

    .line 1107
    :cond_1e
    if-eq v2, v9, :cond_1f

    if-ne v2, v8, :cond_2e

    .line 1108
    :cond_1f
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    if-ne v2, v3, :cond_2b

    .line 1109
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v4, 0x7f02059b

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1137
    :cond_20
    :goto_d
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$26(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_21

    .line 1138
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2, v7}, Lcom/fiio/music/activity/PlayerMainActivity;->access$25(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 1140
    :cond_21
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$27(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$28()[I

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v5}, Lcom/fiio/music/activity/PlayerMainActivity;->access$26(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1141
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1143
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->O()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->Q()Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->K()Z

    move-result v1

    if-nez v1, :cond_22

    .line 1144
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1145
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$13(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    :cond_22
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v1

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Lcom/fiio/music/h/e;->a(J)V

    .line 1151
    const-string v0, "songName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1152
    const-string v0, "songName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    const-string v1, "artistName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1155
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_32

    .line 1157
    :cond_23
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2, v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$67(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    :goto_e
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$68(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$69(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$70(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "albumName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    :cond_24
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1166
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$71(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 1167
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getSampleRate()I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getEncodingRate()I

    move-result v2

    iget-object v4, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/entity/Song;->getBitRate()I

    move-result v4

    .line 1166
    invoke-static {p1, v1, v2, v4}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    :goto_f
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v8, :cond_25

    .line 1173
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 1174
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$72(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getSampleRate()I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getEncodingRate()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    :cond_25
    :goto_10
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1181
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    new-instance v2, Lcom/fiio/music/util/bw;

    invoke-direct {v2, v0}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$34(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/util/bw;)V

    .line 1182
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1183
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$35(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bw;

    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1184
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1183
    invoke-static {v0, v1}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1186
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    if-ne v1, v3, :cond_36

    .line 1187
    if-eqz v0, :cond_35

    .line 1188
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1218
    :cond_26
    :goto_11
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$1(Lcom/fiio/music/activity/PlayerMainActivity;)V

    goto/16 :goto_1

    .line 1058
    :cond_27
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/16 :goto_9

    .line 1064
    :cond_28
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-string v1, "songId"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$24(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    goto/16 :goto_a

    .line 1073
    :cond_29
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/PlayerMainActivity;->curSongList:Ljava/util/List;

    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bl;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$60(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    goto/16 :goto_b

    .line 1092
    :cond_2a
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/PlayerMainActivity;->curSongList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$59(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 1093
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$64(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$65(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$63(Lcom/fiio/music/activity/PlayerMainActivity;II)V

    goto/16 :goto_c

    .line 1111
    :cond_2b
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    if-ne v2, v10, :cond_2c

    .line 1112
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v4, 0x7f02059c

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 1114
    :cond_2c
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    if-ne v2, v9, :cond_2d

    .line 1115
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v4, 0x7f02059d

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 1117
    :cond_2d
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    if-ne v2, v8, :cond_20

    .line 1118
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v4, 0x7f02059d

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 1123
    :cond_2e
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    if-ne v2, v3, :cond_2f

    .line 1124
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v4, 0x7f02059e

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 1126
    :cond_2f
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    if-ne v2, v10, :cond_30

    .line 1127
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v4, 0x7f02059f

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 1129
    :cond_30
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    if-ne v2, v9, :cond_31

    .line 1130
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v4, 0x7f0205a0

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 1132
    :cond_31
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    if-ne v2, v8, :cond_20

    .line 1133
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v4, 0x7f0205a0

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 1159
    :cond_32
    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2, v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$67(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1169
    :cond_33
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$71(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v7, v7, v7}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 1176
    :cond_34
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$72(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v7, v7}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 1190
    :cond_35
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_11

    .line 1193
    :cond_36
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    if-ne v1, v10, :cond_38

    .line 1194
    if-eqz v0, :cond_37

    .line 1195
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_11

    .line 1197
    :cond_37
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_11

    .line 1200
    :cond_38
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    if-ne v1, v9, :cond_3a

    .line 1201
    if-eqz v0, :cond_39

    .line 1202
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_11

    .line 1204
    :cond_39
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_11

    .line 1207
    :cond_3a
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    if-ne v1, v8, :cond_26

    .line 1208
    if-eqz v0, :cond_3b

    .line 1209
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_11

    .line 1211
    :cond_3b
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_11

    .line 1220
    :cond_3c
    if-ne v0, v8, :cond_3d

    .line 1221
    const-string v0, "percent"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1222
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/2addr v0, v1

    .line 1223
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto/16 :goto_1

    .line 1224
    :cond_3d
    if-ne v0, v9, :cond_47

    .line 1225
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 1226
    if-eq v0, v9, :cond_3e

    if-ne v0, v8, :cond_42

    .line 1227
    :cond_3e
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v3, :cond_3f

    .line 1228
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1230
    :cond_3f
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v10, :cond_40

    .line 1231
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1233
    :cond_40
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v9, :cond_41

    .line 1234
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1236
    :cond_41
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 1237
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1242
    :cond_42
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$19(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v8, :cond_43

    .line 1243
    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1244
    const-string v0, "media.audio.OpenUv"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    :cond_43
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v3, :cond_44

    .line 1248
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1250
    :cond_44
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v10, :cond_45

    .line 1251
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1253
    :cond_45
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v9, :cond_46

    .line 1254
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0205a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1256
    :cond_46
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 1257
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0205a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1262
    :cond_47
    const/16 v1, 0xe

    if-ne v0, v1, :cond_50

    .line 1263
    const-string v0, "zengxy - -- "

    const-string v1, "come here update button state "

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 1265
    if-eq v0, v9, :cond_48

    if-ne v0, v8, :cond_4c

    .line 1266
    :cond_48
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v3, :cond_49

    .line 1267
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1269
    :cond_49
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v10, :cond_4a

    .line 1270
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1272
    :cond_4a
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v9, :cond_4b

    .line 1273
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1275
    :cond_4b
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 1276
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1280
    :cond_4c
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v3, :cond_4d

    .line 1281
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1283
    :cond_4d
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v10, :cond_4e

    .line 1284
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1286
    :cond_4e
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v9, :cond_4f

    .line 1287
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0205a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1289
    :cond_4f
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 1290
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0205a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1295
    :cond_50
    const/4 v1, 0x6

    if-ne v0, v1, :cond_51

    .line 1296
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-string v1, "playerMode"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$25(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 1297
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$27(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$28()[I

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$26(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1298
    :cond_51
    const/16 v1, 0x8

    if-ne v0, v1, :cond_52

    .line 1300
    sget-boolean v0, Lcom/fiio/music/activity/PlayerMainActivity;->isActive:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/fiio/music/activity/LockScreenActivity;->b:Z

    if-nez v0, :cond_2

    .line 1302
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->playOrPause()V

    goto/16 :goto_1

    .line 1305
    :cond_52
    const/16 v1, 0x9

    if-ne v0, v1, :cond_5b

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u64ad\u653e\u754c\u9762\u63a5\u6536\u5230 FLAG_UNLATCH_SD_CARD--->\u62d4\u51faSD\u5361\u4e86\uff0c\uff0c\uff0c\uff0c\uff0ccurrentPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$14(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$50(Lcom/fiio/music/activity/PlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$13(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v7}, Lcom/fiio/music/util/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$8(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1311
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 1312
    iget-object v1, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->swipPlayerMainView(I)V

    .line 1313
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u64ad\u653e\u754c\u9762\u63a5\u6536\u5230 FLAG_UNLATCH_SD_CARD--->\u62d4\u51faSD\u5361\u4e86***state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 1314
    if-eq v0, v9, :cond_53

    if-ne v0, v8, :cond_57

    .line 1315
    :cond_53
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v3, :cond_54

    .line 1316
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1318
    :cond_54
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v10, :cond_55

    .line 1319
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1321
    :cond_55
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v9, :cond_56

    .line 1322
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1324
    :cond_56
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 1325
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1330
    :cond_57
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v3, :cond_58

    .line 1331
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1333
    :cond_58
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v10, :cond_59

    .line 1334
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1336
    :cond_59
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v9, :cond_5a

    .line 1337
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0205a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1339
    :cond_5a
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 1340
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0205a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1345
    :cond_5b
    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 1346
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v3, :cond_5c

    .line 1347
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1349
    :cond_5c
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v10, :cond_5d

    .line 1350
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1352
    :cond_5d
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v9, :cond_5e

    .line 1353
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0205a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1355
    :cond_5e
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 1356
    iget-object v0, p0, Lcom/fiio/music/activity/fy;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0205a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_5f
    move v2, v1

    goto/16 :goto_0
.end method
