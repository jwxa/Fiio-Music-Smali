.class public Lcom/fiio/music/activity/EqActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "EqActivity.java"

# interfaces
.implements Lcom/fiio/music/util/cx;
.implements Lcom/fiio/music/util/cy;


# static fields
.field private static final TAG:Ljava/lang/String; = "xyz-EqActivity"


# instance fields
.field private ChangeStyle:Z

.field private DEBUG:Z

.field private FirstspPreferences:Landroid/content/SharedPreferences;

.field private JustForOnce:Z

.field private STYLE_PARAMTER:I

.field XForResetss:F

.field private all_preset:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field private barView1:Landroid/view/View;

.field private barView2:Landroid/view/View;

.field private beziercurvechart:Lcom/fiio/music/widget/BezierCurveChart;

.field private checkidLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field private closeFotJson:Ljava/lang/String;

.field private closeJudgment:Z

.field private closespPreferences:Landroid/content/SharedPreferences;

.field danceButton:Landroid/widget/RadioButton;

.field private defauleValue:[Ljava/lang/String;

.field private enable:Landroid/widget/CheckBox;

.field eqSeekbarSaveState:Lcom/fiio/music/util/o;

.field private eq_reset:Landroid/widget/ImageButton;

.field private eq_viewpager:Landroid/support/v4/view/ViewPager;

.field fiioMediaPlayer:Lcom/example/root/checkappmusic/FiioMediaPlayer;

.field private firstEnter:Z

.field genrespPreferences:Landroid/content/SharedPreferences;

.field gson:Lcom/a/a/aq;

.field private icon_eq_page_label_current:Landroid/widget/ImageView;

.field private icon_eq_page_label_other:Landroid/widget/ImageView;

.field private list_seekbar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/util/VerticalSeekBar;",
            ">;"
        }
    .end annotation
.end field

.field listenerFlag:Z

.field private localEqPlayViewPager:Lcom/fiio/music/adapter/EqPlayViewPager;

.field mClickableSlidingDrawer:Lcom/fiio/music/widget/ClickableSlidingDrawer;

.field mEqBarView1:Lcom/fiio/music/widget/g;

.field mEqBarView2:Lcom/fiio/music/widget/h;

.field private mEqRadioGroup:Landroid/widget/RadioGroup;

.field private mEqualizer_125:Lcom/fiio/music/util/VerticalSeekBar;

.field private mEqualizer_16K:Lcom/fiio/music/util/VerticalSeekBar;

.field private mEqualizer_1K:Lcom/fiio/music/util/VerticalSeekBar;

.field private mEqualizer_250:Lcom/fiio/music/util/VerticalSeekBar;

.field private mEqualizer_2K:Lcom/fiio/music/util/VerticalSeekBar;

.field private mEqualizer_31:Lcom/fiio/music/util/VerticalSeekBar;

.field private mEqualizer_4K:Lcom/fiio/music/util/VerticalSeekBar;

.field private mEqualizer_500:Lcom/fiio/music/util/VerticalSeekBar;

.field private mEqualizer_62:Lcom/fiio/music/util/VerticalSeekBar;

.field private mEqualizer_8K:Lcom/fiio/music/util/VerticalSeekBar;

.field public mediaPlayerManager:Lcom/fiio/music/service/h;

.field mediaplayservice:Lcom/fiio/music/service/MediaPlayerService;

.field modeFlag:I

.field private modeflags:I

.field musicGenre:[F

.field private musicModeFlag:I

.field musicModeJson:Ljava/lang/String;

.field musicString:Ljava/lang/String;

.field private points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/widget/a;",
            ">;"
        }
    .end annotation
.end field

.field pointsForJson:Ljava/lang/String;

.field private resetss:[F

.field private resetssFotJson:Ljava/lang/String;

.field private sp:Landroid/content/SharedPreferences;

.field spPreferences:Landroid/content/SharedPreferences;

.field private text:[Ljava/lang/String;

.field private toasTimeUtils:Lcom/fiio/music/util/cs;

.field utils:Lcom/fiio/music/util/cs;

.field private verticalSeekBar:Lcom/fiio/music/util/VerticalSeekBar;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xa

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 58
    iput-boolean v3, p0, Lcom/fiio/music/activity/EqActivity;->DEBUG:Z

    .line 83
    iput-boolean v3, p0, Lcom/fiio/music/activity/EqActivity;->listenerFlag:Z

    .line 87
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    .line 88
    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->resetss:[F

    .line 89
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " "

    aput-object v1, v0, v3

    const-string v1, "31"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "62"

    aput-object v2, v0, v1

    const-string v1, "125"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "250"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "500"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 90
    const-string v2, "1K"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "2K"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "4K"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "8K"

    aput-object v2, v0, v1

    const-string v1, "16K"

    aput-object v1, v0, v6

    const/16 v1, 0xb

    const-string v2, " "

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->defauleValue:[Ljava/lang/String;

    .line 91
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Amp"

    aput-object v1, v0, v3

    const-string v1, "31"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "62"

    aput-object v2, v0, v1

    const-string v1, "125"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "250"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "500"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "1K"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 92
    const-string v2, "2K"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "4K"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "8K"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->text:[Ljava/lang/String;

    .line 102
    iput-object v4, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    .line 103
    iput-object v4, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    .line 107
    iput v5, p0, Lcom/fiio/music/activity/EqActivity;->STYLE_PARAMTER:I

    .line 424
    iput v3, p0, Lcom/fiio/music/activity/EqActivity;->musicModeFlag:I

    .line 750
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/activity/EqActivity;->XForResetss:F

    .line 752
    iput-object v4, p0, Lcom/fiio/music/activity/EqActivity;->pointsForJson:Ljava/lang/String;

    .line 883
    iput-object v4, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    .line 55
    return-void

    .line 87
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private AchieveSpecificLogic(IZ)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    const v6, 0x7f0b0384

    .line 489
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 490
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 491
    const-string v1, "com.fiio.music.player.action.SET_PLAY_SERVICE_OPT"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    new-instance v1, Lcom/fiio/music/util/o;

    iget-object v3, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/fiio/music/activity/EqActivity;->fiioMediaPlayer:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v5, p0, Lcom/fiio/music/activity/EqActivity;->beziercurvechart:Lcom/fiio/music/widget/BezierCurveChart;

    invoke-direct {v1, v3, v4, v5}, Lcom/fiio/music/util/o;-><init>(Ljava/util/ArrayList;Lcom/example/root/checkappmusic/FiioMediaPlayer;Lcom/fiio/music/widget/BezierCurveChart;)V

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->eqSeekbarSaveState:Lcom/fiio/music/util/o;

    .line 493
    const-string v1, "eqactivity"

    invoke-virtual {p0, v1, v0}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    .line 494
    const-string v1, "MusicGenre"

    invoke-virtual {p0, v1, v0}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    .line 495
    new-instance v1, Lcom/a/a/aq;

    invoke-direct {v1}, Lcom/a/a/aq;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    .line 496
    new-instance v1, Lcom/fiio/music/activity/ap;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ap;-><init>(Lcom/fiio/music/activity/EqActivity;)V

    invoke-virtual {v1}, Lcom/fiio/music/activity/ap;->a()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 498
    const v1, 0x7f0b00bd

    if-ne p1, v1, :cond_4

    .line 499
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "xyz-EqActivity"

    const-string v1, "R.id.pop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    new-instance v1, Lcom/fiio/music/util/cs;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/cs;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v4, 0x7f0c021d

    invoke-virtual {p0, v4}, Lcom/fiio/music/activity/EqActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v0, v4}, Lcom/fiio/music/util/cs;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pop"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    .line 502
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 503
    sget-object v0, Lcom/fiio/music/service/h;->f:[F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    .line 507
    :goto_0
    const/4 v0, 0x1

    .line 508
    const-string v1, "flag"

    const-string v3, "pop"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "checkId"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 607
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "checked"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 608
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    invoke-direct {p0, v1, v0}, Lcom/fiio/music/activity/EqActivity;->toGetChangeMode([FI)V

    .line 609
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->resetss:[F

    .line 612
    :cond_2
    return-void

    .line 505
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/a/a/aq;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    goto :goto_0

    .line 509
    :cond_4
    const v1, 0x7f0b00be

    if-ne p1, v1, :cond_7

    .line 510
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "xyz-EqActivity"

    const-string v1, "R.id.resetss"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_5
    new-instance v1, Lcom/fiio/music/util/cs;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/cs;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v4, 0x7f0c021e

    invoke-virtual {p0, v4}, Lcom/fiio/music/activity/EqActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v0, v4}, Lcom/fiio/music/util/cs;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 512
    const/4 v1, 0x2

    .line 513
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    const-string v4, "resetss"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 515
    sget-object v0, Lcom/fiio/music/service/h;->i:[F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    .line 520
    :goto_2
    sget-object v0, Lcom/fiio/music/service/h;->i:[F

    .line 521
    const-string v0, "flag"

    const-string v3, "resetss"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v1

    .line 522
    goto :goto_1

    .line 517
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v4, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/a/a/aq;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    goto :goto_2

    .line 522
    :cond_7
    const v1, 0x7f0b00bf

    if-ne p1, v1, :cond_a

    .line 523
    new-instance v1, Lcom/fiio/music/util/cs;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/cs;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v4, 0x7f0c021f

    invoke-virtual {p0, v4}, Lcom/fiio/music/activity/EqActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v0, v4}, Lcom/fiio/music/util/cs;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 524
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "xyz-EqActivity"

    const-string v1, "R.id.rock"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_8
    const/4 v1, 0x3

    .line 526
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    const-string v4, "rock"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    .line 527
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 528
    sget-object v0, Lcom/fiio/music/service/h;->g:[F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    .line 533
    :goto_3
    const-string v0, "flag"

    const-string v3, "rock"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v1

    .line 534
    goto/16 :goto_1

    .line 530
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v4, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/a/a/aq;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    goto :goto_3

    .line 534
    :cond_a
    const v1, 0x7f0b00c1

    if-ne p1, v1, :cond_d

    .line 535
    new-instance v1, Lcom/fiio/music/util/cs;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/cs;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v4, 0x7f0c0220

    invoke-virtual {p0, v4}, Lcom/fiio/music/activity/EqActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v0, v4}, Lcom/fiio/music/util/cs;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 536
    const/4 v1, 0x4

    .line 537
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "xyz-EqActivity"

    const-string v4, "R.id.dance"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    const-string v4, "dance"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 540
    sget-object v0, Lcom/fiio/music/service/h;->c:[F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    .line 545
    :goto_4
    const-string v0, "flag"

    const-string v3, "dance"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v1

    .line 546
    goto/16 :goto_1

    .line 542
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v4, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/a/a/aq;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    goto :goto_4

    .line 546
    :cond_d
    const v1, 0x7f0b00c2

    if-ne p1, v1, :cond_10

    .line 547
    new-instance v1, Lcom/fiio/music/util/cs;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/cs;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v4, 0x7f0c0221

    invoke-virtual {p0, v4}, Lcom/fiio/music/activity/EqActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v0, v4}, Lcom/fiio/music/util/cs;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 548
    const/4 v1, 0x5

    .line 549
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "xyz-EqActivity"

    const-string v4, "R.id.blues"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    const-string v4, "blues"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    .line 551
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 552
    sget-object v0, Lcom/fiio/music/service/h;->a:[F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    .line 557
    :goto_5
    const-string v0, "flag"

    const-string v3, "blues"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v1

    .line 558
    goto/16 :goto_1

    .line 554
    :cond_f
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v4, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/a/a/aq;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    goto :goto_5

    .line 558
    :cond_10
    const v1, 0x7f0b00c3

    if-ne p1, v1, :cond_13

    .line 559
    new-instance v1, Lcom/fiio/music/util/cs;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/cs;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v4, 0x7f0c0222

    invoke-virtual {p0, v4}, Lcom/fiio/music/activity/EqActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v0, v4}, Lcom/fiio/music/util/cs;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 560
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "xyz-EqActivity"

    const-string v1, "R.id.metal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_11
    const/4 v1, 0x6

    .line 562
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    const-string v4, "metal"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    .line 563
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 564
    sget-object v0, Lcom/fiio/music/service/h;->e:[F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    .line 569
    :goto_6
    const-string v0, "flag"

    const-string v3, "metal"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v1

    .line 570
    goto/16 :goto_1

    .line 566
    :cond_12
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v4, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/a/a/aq;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    goto :goto_6

    .line 570
    :cond_13
    const v1, 0x7f0b00c5

    if-ne p1, v1, :cond_16

    .line 571
    new-instance v1, Lcom/fiio/music/util/cs;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/cs;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v4, 0x7f0c0223

    invoke-virtual {p0, v4}, Lcom/fiio/music/activity/EqActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v0, v4}, Lcom/fiio/music/util/cs;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 572
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->DEBUG:Z

    if-eqz v0, :cond_14

    const-string v0, "xyz-EqActivity"

    const-string v1, "R.id.voice"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_14
    const/4 v1, 0x7

    .line 574
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    const-string v4, "Voice"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 576
    sget-object v0, Lcom/fiio/music/service/h;->h:[F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    .line 581
    :goto_7
    const-string v0, "flag"

    const-string v3, "voice"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v1

    .line 582
    goto/16 :goto_1

    .line 578
    :cond_15
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v4, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/a/a/aq;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    goto :goto_7

    .line 582
    :cond_16
    const v1, 0x7f0b00c6

    if-ne p1, v1, :cond_19

    .line 583
    new-instance v1, Lcom/fiio/music/util/cs;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/cs;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v4, 0x7f0c0224

    invoke-virtual {p0, v4}, Lcom/fiio/music/activity/EqActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v0, v4}, Lcom/fiio/music/util/cs;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 584
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "xyz-EqActivity"

    const-string v1, "R.id.classic"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_17
    const/16 v1, 0x8

    .line 586
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    const-string v4, "classic"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    .line 587
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 588
    sget-object v0, Lcom/fiio/music/service/h;->b:[F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    .line 593
    :goto_8
    const-string v0, "flag"

    const-string v3, "classic"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v1

    .line 594
    goto/16 :goto_1

    .line 590
    :cond_18
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v4, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/a/a/aq;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    goto :goto_8

    .line 594
    :cond_19
    const v1, 0x7f0b00c7

    if-ne p1, v1, :cond_1

    .line 595
    new-instance v1, Lcom/fiio/music/util/cs;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/cs;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v4, 0x7f0c0225

    invoke-virtual {p0, v4}, Lcom/fiio/music/activity/EqActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v0, v4}, Lcom/fiio/music/util/cs;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 596
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "xyz-EqActivity"

    const-string v1, "R.id.jazz"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_1a
    const/16 v1, 0x9

    .line 598
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    const-string v4, "jazz"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    .line 599
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 600
    sget-object v0, Lcom/fiio/music/service/h;->d:[F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    .line 604
    :goto_9
    const-string v0, "flag"

    const-string v3, "jazz"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v1

    goto/16 :goto_1

    .line 602
    :cond_1b
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v4, p0, Lcom/fiio/music/activity/EqActivity;->musicString:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/a/a/aq;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->musicGenre:[F

    goto :goto_9
.end method

.method private SeekBarsetProgressLow()V
    .locals 4

    .prologue
    .line 986
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 987
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 992
    :cond_0
    return-void

    .line 988
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    invoke-virtual {v0, v2, v3}, Lcom/fiio/music/util/VerticalSeekBar;->setProgressHigh(D)V

    .line 989
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/fiio/music/util/VerticalSeekBar;->setOnProgressChangeListener(Lcom/fiio/music/util/cy;)V

    .line 987
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/fiio/music/activity/EqActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->icon_eq_page_label_current:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/activity/EqActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->icon_eq_page_label_other:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/fiio/music/activity/EqActivity;)[F
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->resetss:[F

    return-object v0
.end method

.method static synthetic access$11(Lcom/fiio/music/activity/EqActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/fiio/music/activity/EqActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/fiio/music/activity/EqActivity;IZ)V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/activity/EqActivity;->AchieveSpecificLogic(IZ)V

    return-void
.end method

.method static synthetic access$14(Lcom/fiio/music/activity/EqActivity;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->JustForOnce:Z

    return v0
.end method

.method static synthetic access$15(Lcom/fiio/music/activity/EqActivity;Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/fiio/music/activity/EqActivity;->JustForOnce:Z

    return-void
.end method

.method static synthetic access$2(Lcom/fiio/music/activity/EqActivity;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/fiio/music/activity/EqActivity;->resetValue()V

    return-void
.end method

.method static synthetic access$3(Lcom/fiio/music/activity/EqActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 881
    iput-object p1, p0, Lcom/fiio/music/activity/EqActivity;->closespPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$4(Lcom/fiio/music/activity/EqActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/activity/EqActivity;Z)V
    .locals 0

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/fiio/music/activity/EqActivity;->closeJudgment:Z

    return-void
.end method

.method static synthetic access$6(Lcom/fiio/music/activity/EqActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->closespPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$7(Lcom/fiio/music/activity/EqActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/fiio/music/activity/EqActivity;->closeFotJson:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/fiio/music/activity/EqActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->closeFotJson:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/fiio/music/activity/EqActivity;)Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->closeJudgment:Z

    return v0
.end method

.method private add_all_seekbar()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_31:Lcom/fiio/music/util/VerticalSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_62:Lcom/fiio/music/util/VerticalSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_125:Lcom/fiio/music/util/VerticalSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_250:Lcom/fiio/music/util/VerticalSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_500:Lcom/fiio/music/util/VerticalSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_1K:Lcom/fiio/music/util/VerticalSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_2K:Lcom/fiio/music/util/VerticalSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_4K:Lcom/fiio/music/util/VerticalSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_8K:Lcom/fiio/music/util/VerticalSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_16K:Lcom/fiio/music/util/VerticalSeekBar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 415
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/fiio/music/util/VerticalSeekBar;->setOnSeekBarChangeListener(Lcom/fiio/music/util/cx;)V

    .line 411
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private calculateOffsetLow(I)D
    .locals 6

    .prologue
    .line 1001
    const-wide v2, 0x4073100000000000L    # 305.0

    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/a;

    iget v0, v0, Lcom/fiio/music/widget/a;->c:F

    float-to-double v0, v0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private initEqChange()V
    .locals 4

    .prologue
    .line 742
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    new-instance v1, Lcom/fiio/music/widget/a;

    const/4 v2, 0x0

    const v3, -0x3ace8000    # -2840.0f

    invoke-direct {v1, v2, v3}, Lcom/fiio/music/widget/a;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    return-void
.end method

.method private initResetCheckBox()V
    .locals 5

    .prologue
    const v4, 0x7f04002e

    const/4 v1, 0x0

    .line 162
    const v0, 0x7f0b00af

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->eq_reset:Landroid/widget/ImageButton;

    .line 163
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    iget v0, p0, Lcom/fiio/music/activity/EqActivity;->STYLE_PARAMTER:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 167
    const v0, 0x7f04002c

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 177
    :goto_0
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->eq_reset:Landroid/widget/ImageButton;

    new-instance v3, Lcom/fiio/music/activity/w;

    invoke-direct {v3, p0, v0, v1}, Lcom/fiio/music/activity/w;-><init>(Lcom/fiio/music/activity/EqActivity;Landroid/view/View;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void

    .line 168
    :cond_0
    iget v0, p0, Lcom/fiio/music/activity/EqActivity;->STYLE_PARAMTER:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 169
    const v0, 0x7f04002d

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    iget v0, p0, Lcom/fiio/music/activity/EqActivity;->STYLE_PARAMTER:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 171
    invoke-static {p0, v4, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/EqActivity;->STYLE_PARAMTER:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 173
    invoke-static {p0, v4, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 175
    goto :goto_0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/fiio/music/activity/EqActivity;->init_seekbar()V

    .line 150
    invoke-direct {p0}, Lcom/fiio/music/activity/EqActivity;->add_all_seekbar()V

    .line 151
    invoke-direct {p0}, Lcom/fiio/music/activity/EqActivity;->radioGroupInit()V

    .line 152
    invoke-direct {p0}, Lcom/fiio/music/activity/EqActivity;->initEqChange()V

    .line 153
    invoke-direct {p0}, Lcom/fiio/music/activity/EqActivity;->setCheckBoxClick()V

    .line 154
    invoke-direct {p0}, Lcom/fiio/music/activity/EqActivity;->initResetCheckBox()V

    .line 155
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->beziercurvechart:Lcom/fiio/music/widget/BezierCurveChart;

    invoke-virtual {v0}, Lcom/fiio/music/widget/BezierCurveChart;->postInvalidate()V

    .line 156
    return-void
.end method

.method private init_seekbar()V
    .locals 2

    .prologue
    .line 655
    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->eq_viewpager:Landroid/support/v4/view/ViewPager;

    .line 656
    const v0, 0x7f0b00b5

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->icon_eq_page_label_current:Landroid/widget/ImageView;

    .line 657
    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->icon_eq_page_label_other:Landroid/widget/ImageView;

    .line 659
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->icon_eq_page_label_current:Landroid/widget/ImageView;

    const v1, 0x7f0203c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 660
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->icon_eq_page_label_other:Landroid/widget/ImageView;

    const v1, 0x7f0203c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 661
    new-instance v0, Lcom/fiio/music/widget/g;

    iget-boolean v1, p0, Lcom/fiio/music/activity/EqActivity;->ChangeStyle:Z

    invoke-direct {v0, p0, v1}, Lcom/fiio/music/widget/g;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mEqBarView1:Lcom/fiio/music/widget/g;

    .line 662
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mEqBarView1:Lcom/fiio/music/widget/g;

    invoke-virtual {v0}, Lcom/fiio/music/widget/g;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->barView1:Landroid/view/View;

    .line 663
    new-instance v0, Lcom/fiio/music/widget/h;

    iget-boolean v1, p0, Lcom/fiio/music/activity/EqActivity;->ChangeStyle:Z

    invoke-direct {v0, p0, v1}, Lcom/fiio/music/widget/h;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mEqBarView2:Lcom/fiio/music/widget/h;

    .line 664
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mEqBarView2:Lcom/fiio/music/widget/h;

    invoke-virtual {v0}, Lcom/fiio/music/widget/h;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->barView2:Landroid/view/View;

    .line 667
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->barView1:Landroid/view/View;

    .line 668
    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    .line 667
    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_31:Lcom/fiio/music/util/VerticalSeekBar;

    .line 669
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->barView1:Landroid/view/View;

    .line 670
    const v1, 0x7f0b00cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    .line 669
    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_62:Lcom/fiio/music/util/VerticalSeekBar;

    .line 671
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->barView1:Landroid/view/View;

    .line 672
    const v1, 0x7f0b00cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    .line 671
    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_125:Lcom/fiio/music/util/VerticalSeekBar;

    .line 673
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->barView1:Landroid/view/View;

    .line 674
    const v1, 0x7f0b00cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    .line 673
    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_250:Lcom/fiio/music/util/VerticalSeekBar;

    .line 675
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->barView1:Landroid/view/View;

    .line 676
    const v1, 0x7f0b00ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    .line 675
    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_500:Lcom/fiio/music/util/VerticalSeekBar;

    .line 677
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->barView2:Landroid/view/View;

    .line 678
    const v1, 0x7f0b00cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    .line 677
    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_1K:Lcom/fiio/music/util/VerticalSeekBar;

    .line 679
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->barView2:Landroid/view/View;

    .line 680
    const v1, 0x7f0b00d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    .line 679
    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_2K:Lcom/fiio/music/util/VerticalSeekBar;

    .line 681
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->barView2:Landroid/view/View;

    .line 682
    const v1, 0x7f0b00d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    .line 681
    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_4K:Lcom/fiio/music/util/VerticalSeekBar;

    .line 683
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->barView2:Landroid/view/View;

    .line 684
    const v1, 0x7f0b00d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    .line 683
    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_8K:Lcom/fiio/music/util/VerticalSeekBar;

    .line 685
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->barView2:Landroid/view/View;

    .line 686
    const v1, 0x7f0b00d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    .line 685
    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_16K:Lcom/fiio/music/util/VerticalSeekBar;

    .line 687
    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/BezierCurveChart;

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->beziercurvechart:Lcom/fiio/music/widget/BezierCurveChart;

    .line 689
    const v0, 0x7f0b00b1

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->enable:Landroid/widget/CheckBox;

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 692
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->barView1:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->barView2:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    new-instance v1, Lcom/fiio/music/adapter/EqPlayViewPager;

    invoke-direct {v1}, Lcom/fiio/music/adapter/EqPlayViewPager;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->localEqPlayViewPager:Lcom/fiio/music/adapter/EqPlayViewPager;

    .line 695
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->localEqPlayViewPager:Lcom/fiio/music/adapter/EqPlayViewPager;

    invoke-virtual {v1, v0}, Lcom/fiio/music/adapter/EqPlayViewPager;->setdata(Ljava/util/List;)V

    .line 696
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->eq_viewpager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->localEqPlayViewPager:Lcom/fiio/music/adapter/EqPlayViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 697
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->eq_viewpager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/fiio/music/activity/as;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/as;-><init>(Lcom/fiio/music/activity/EqActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 699
    return-void
.end method

.method private initradioButton()V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    .line 209
    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const v0, 0x7f0b00be

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const v0, 0x7f0b00bf

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    const v0, 0x7f0b00c1

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const v0, 0x7f0b00c2

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    const v0, 0x7f0b00c3

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    const v0, 0x7f0b00c5

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    const v0, 0x7f0b00c6

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    const v0, 0x7f0b00c7

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method private radioGroupInit()V
    .locals 2

    .prologue
    .line 428
    const v0, 0x7f0b00b8

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/ClickableSlidingDrawer;

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mClickableSlidingDrawer:Lcom/fiio/music/widget/ClickableSlidingDrawer;

    .line 430
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mClickableSlidingDrawer:Lcom/fiio/music/widget/ClickableSlidingDrawer;

    new-instance v1, Lcom/fiio/music/activity/aj;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/aj;-><init>(Lcom/fiio/music/activity/EqActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/ClickableSlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 445
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mClickableSlidingDrawer:Lcom/fiio/music/widget/ClickableSlidingDrawer;

    new-instance v1, Lcom/fiio/music/activity/al;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/al;-><init>(Lcom/fiio/music/activity/EqActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/ClickableSlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 477
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mClickableSlidingDrawer:Lcom/fiio/music/widget/ClickableSlidingDrawer;

    new-instance v1, Lcom/fiio/music/activity/ao;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ao;-><init>(Lcom/fiio/music/activity/EqActivity;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/ClickableSlidingDrawer;->setUpDataCheck(Lcom/fiio/music/widget/c;)V

    .line 483
    return-void
.end method

.method private resetValue()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/16 v2, 0xa

    .line 226
    const-string v0, "MusicGenre"

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    .line 228
    iput-boolean v4, p0, Lcom/fiio/music/activity/EqActivity;->listenerFlag:Z

    .line 229
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    .line 231
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    invoke-virtual {v1, v0}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pop"

    iget-object v3, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    invoke-direct {p0, v0, v4}, Lcom/fiio/music/activity/EqActivity;->toGetChangeMode([FI)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    .line 237
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    invoke-virtual {v1, v0}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "resetss"

    iget-object v3, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    invoke-direct {p0, v0, v5}, Lcom/fiio/music/activity/EqActivity;->toGetChangeMode([FI)V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    .line 243
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    invoke-virtual {v1, v0}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "rock"

    iget-object v3, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    invoke-direct {p0, v0, v6}, Lcom/fiio/music/activity/EqActivity;->toGetChangeMode([FI)V

    goto :goto_0

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    .line 249
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    invoke-virtual {v1, v0}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dance"

    iget-object v3, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/activity/EqActivity;->toGetChangeMode([FI)V

    goto/16 :goto_0

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 254
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    .line 255
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    invoke-virtual {v1, v0}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "blues"

    iget-object v3, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/activity/EqActivity;->toGetChangeMode([FI)V

    goto/16 :goto_0

    .line 259
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 260
    new-array v0, v2, [F

    fill-array-data v0, :array_5

    .line 261
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    invoke-virtual {v1, v0}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "metal"

    iget-object v3, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/activity/EqActivity;->toGetChangeMode([FI)V

    goto/16 :goto_0

    .line 265
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 266
    new-array v0, v2, [F

    fill-array-data v0, :array_6

    .line 267
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    invoke-virtual {v1, v0}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "Voice"

    iget-object v3, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/activity/EqActivity;->toGetChangeMode([FI)V

    goto/16 :goto_0

    .line 271
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 272
    new-array v0, v2, [F

    fill-array-data v0, :array_7

    .line 273
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    invoke-virtual {v1, v0}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "classic"

    iget-object v3, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 275
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/activity/EqActivity;->toGetChangeMode([FI)V

    goto/16 :goto_0

    .line 277
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->checkidLists:Ljava/util/List;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-array v0, v2, [F

    fill-array-data v0, :array_8

    .line 279
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    invoke-virtual {v1, v0}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    .line 280
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "jazz"

    iget-object v3, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 281
    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lcom/fiio/music/activity/EqActivity;->toGetChangeMode([FI)V

    goto/16 :goto_0

    .line 230
    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
        0x0
        -0x40000000    # -2.0f
        -0x3f800000    # -4.0f
        -0x3f800000    # -4.0f
        -0x40000000    # -2.0f
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    .line 236
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 242
    :array_2
    .array-data 4
        -0x40000000    # -2.0f
        0x0
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        -0x40000000    # -2.0f
        -0x40000000    # -2.0f
        0x0
        0x0
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data

    .line 248
    :array_3
    .array-data 4
        -0x40000000    # -2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        -0x40000000    # -2.0f
        -0x40000000    # -2.0f
        0x0
        0x0
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data

    .line 254
    :array_4
    .array-data 4
        -0x40000000    # -2.0f
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x0
        -0x40000000    # -2.0f
        -0x3f800000    # -4.0f
    .end array-data

    .line 260
    :array_5
    .array-data 4
        -0x3f400000    # -6.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x40000000    # 2.0f
        0x0
    .end array-data

    .line 266
    :array_6
    .array-data 4
        -0x3f800000    # -4.0f
        0x0
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x3f800000    # -4.0f
        -0x3f400000    # -6.0f
    .end array-data

    .line 272
    :array_7
    .array-data 4
        0x0
        0x40c00000    # 6.0f
        0x40c00000    # 6.0f
        0x40800000    # 4.0f
        0x0
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x40000000    # 2.0f
    .end array-data

    .line 278
    :array_8
    .array-data 4
        0x0
        0x0
        0x0
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x0
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data
.end method

.method private setCheckBoxClick()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 293
    const-string v1, "eqactivity"

    invoke-virtual {p0, v1, v0}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    .line 294
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    const-string v2, "isCheckedForCheckBox"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 295
    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->enable:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 296
    new-instance v1, Lcom/fiio/music/util/cs;

    invoke-direct {v1, p0}, Lcom/fiio/music/util/cs;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->utils:Lcom/fiio/music/util/cs;

    .line 298
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->enable:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    .line 299
    :goto_0
    const/16 v0, 0xa

    if-lt v1, v0, :cond_1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->enable:Landroid/widget/CheckBox;

    new-instance v1, Lcom/fiio/music/activity/ab;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ab;-><init>(Lcom/fiio/music/activity/EqActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 397
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    new-instance v2, Lcom/fiio/music/activity/aa;

    invoke-direct {v2, p0}, Lcom/fiio/music/activity/aa;-><init>(Lcom/fiio/music/activity/EqActivity;)V

    invoke-virtual {v0, v2}, Lcom/fiio/music/util/VerticalSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 299
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private setfirstPoints()V
    .locals 4

    .prologue
    .line 976
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 982
    return-void

    .line 977
    :cond_0
    new-instance v1, Lcom/fiio/music/widget/a;

    int-to-float v2, v0

    const v3, -0x3ace8000    # -2840.0f

    invoke-direct {v1, v2, v3}, Lcom/fiio/music/widget/a;-><init>(FF)V

    .line 978
    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 979
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->beziercurvechart:Lcom/fiio/music/widget/BezierCurveChart;

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/fiio/music/activity/EqActivity;->defauleValue:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/widget/BezierCurveChart;->a(Ljava/util/List;[Ljava/lang/String;)V

    .line 976
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private toGetChangeMode([FI)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 619
    iput p2, p0, Lcom/fiio/music/activity/EqActivity;->modeflags:I

    .line 620
    const-string v0, "MusicMode"

    invoke-virtual {p0, v0, v8}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->sp:Landroid/content/SharedPreferences;

    .line 621
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ModeFlag"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 622
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->eqSeekbarSaveState:Lcom/fiio/music/util/o;

    iget-boolean v1, p0, Lcom/fiio/music/activity/EqActivity;->closeJudgment:Z

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/o;->a(Z)V

    .line 623
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->eqSeekbarSaveState:Lcom/fiio/music/util/o;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/o;->a(Ljava/util/List;)V

    .line 624
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->eqSeekbarSaveState:Lcom/fiio/music/util/o;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->defauleValue:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/o;->a([Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->eqSeekbarSaveState:Lcom/fiio/music/util/o;

    invoke-virtual {v0, p1}, Lcom/fiio/music/util/o;->a([F)V

    .line 626
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->listenerFlag:Z

    if-eqz v0, :cond_0

    move v1, v2

    .line 627
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_1

    .line 632
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->closeJudgment:Z

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->fiioMediaPlayer:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->resetss:[F

    invoke-virtual {v0, v2, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setEqualizer(Z[F)V

    .line 640
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->beziercurvechart:Lcom/fiio/music/widget/BezierCurveChart;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->defauleValue:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/widget/BezierCurveChart;->a(Ljava/util/List;[Ljava/lang/String;)V

    .line 642
    const-string v0, "closeparamter"

    invoke-virtual {p0, v0, v8}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    .line 643
    new-instance v0, Lcom/a/a/aq;

    invoke-direct {v0}, Lcom/a/a/aq;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    .line 644
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->resetss:[F

    invoke-virtual {v0, v1}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->closeFotJson:Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "close"

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->closeFotJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 646
    iput-boolean v8, p0, Lcom/fiio/music/activity/EqActivity;->listenerFlag:Z

    .line 650
    :cond_0
    return-void

    .line 628
    :cond_1
    const-wide v4, 0x3f714e9a52355d06L    # 0.004225352112676056

    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/a;

    iget v0, v0, Lcom/fiio/music/widget/a;->c:F

    const v3, 0x45318000    # 2840.0f

    add-float/2addr v0, v3

    float-to-double v6, v0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    double-to-float v0, v4

    neg-float v0, v0

    iput v0, p0, Lcom/fiio/music/activity/EqActivity;->XForResetss:F

    .line 629
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->resetss:[F

    add-int/lit8 v3, v1, -0x1

    iget v4, p0, Lcom/fiio/music/activity/EqActivity;->XForResetss:F

    aput v4, v0, v3

    .line 627
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->fiioMediaPlayer:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->resetss:[F

    invoke-virtual {v0, v8, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setEqualizer(Z[F)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/fiio/music/activity/EqActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/EqActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ChangeStyle"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->ChangeStyle:Z

    .line 118
    invoke-virtual {p0}, Lcom/fiio/music/activity/EqActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/EqActivity;->STYLE_PARAMTER:I

    .line 120
    iget v0, p0, Lcom/fiio/music/activity/EqActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 121
    const v0, 0x7f04004c

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->setContentView(I)V

    .line 129
    :cond_1
    :goto_0
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->all_preset:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->list_seekbar:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Lcom/fiio/music/util/VerticalSeekBar;

    iget-boolean v1, p0, Lcom/fiio/music/activity/EqActivity;->ChangeStyle:Z

    invoke-direct {v0, p0, v1}, Lcom/fiio/music/util/VerticalSeekBar;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->verticalSeekBar:Lcom/fiio/music/util/VerticalSeekBar;

    .line 134
    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->b()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->a()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->fiioMediaPlayer:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    .line 135
    new-instance v0, Lcom/fiio/music/util/cs;

    invoke-direct {v0, p0}, Lcom/fiio/music/util/cs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->toasTimeUtils:Lcom/fiio/music/util/cs;

    .line 136
    const-string v0, "MusicGenre"

    invoke-virtual {p0, v0, v2}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    .line 137
    new-instance v0, Lcom/a/a/aq;

    invoke-direct {v0}, Lcom/a/a/aq;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    .line 138
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->fiioMediaPlayer:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->beziercurvechart:Lcom/fiio/music/widget/BezierCurveChart;

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/o;->a(Ljava/util/ArrayList;Lcom/example/root/checkappmusic/FiioMediaPlayer;Lcom/fiio/music/widget/BezierCurveChart;)Lcom/fiio/music/util/o;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->eqSeekbarSaveState:Lcom/fiio/music/util/o;

    .line 139
    new-instance v0, Lcom/fiio/music/service/h;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/h;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    .line 140
    invoke-direct {p0}, Lcom/fiio/music/activity/EqActivity;->initView()V

    .line 141
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->mEqualizer_31:Lcom/fiio/music/util/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/fiio/music/util/VerticalSeekBar;->a()V

    .line 142
    invoke-direct {p0}, Lcom/fiio/music/activity/EqActivity;->initradioButton()V

    .line 145
    return-void

    .line 122
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/EqActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 123
    const v0, 0x7f04004d

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->setContentView(I)V

    goto :goto_0

    .line 124
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/EqActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 125
    const v0, 0x7f04004e

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->setContentView(I)V

    goto :goto_0

    .line 126
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/EqActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 127
    const v0, 0x7f04004f

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/EqActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 967
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 968
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 969
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 726
    new-instance v1, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    .line 727
    const/16 v2, 0x19

    if-ne p1, v2, :cond_0

    .line 728
    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    .line 736
    :goto_0
    return v0

    .line 730
    :cond_0
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 731
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0

    .line 736
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 890
    const-string v0, "eqactivity"

    invoke-virtual {p0, v0, v3}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    .line 891
    new-instance v0, Lcom/a/a/aq;

    invoke-direct {v0}, Lcom/a/a/aq;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    .line 892
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->pointsForJson:Ljava/lang/String;

    .line 893
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->resetss:[F

    invoke-virtual {v0, v1}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    .line 894
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "resetss"

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->pointsForJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 895
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ResetssValue"

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 897
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "closeJudgment"

    iget-boolean v2, p0, Lcom/fiio/music/activity/EqActivity;->closeJudgment:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 899
    const-string v0, "isFirst"

    invoke-virtual {p0, v0, v3}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->FirstspPreferences:Landroid/content/SharedPreferences;

    .line 900
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->FirstspPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isfirst"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 901
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 902
    return-void
.end method

.method public onProgressAfter()V
    .locals 0

    .prologue
    .line 886
    return-void
.end method

.method public onProgressBefore()V
    .locals 0

    .prologue
    .line 747
    return-void
.end method

.method public onProgressChanged(Lcom/fiio/music/util/VerticalSeekBar;DD)V
    .locals 6

    .prologue
    .line 756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->listenerFlag:Z

    .line 761
    neg-double v0, p2

    const-wide v2, 0x40b6300000000000L    # 5680.0

    sub-double/2addr v0, v2

    .line 762
    double-to-float v0, v0

    .line 763
    invoke-virtual {p1}, Lcom/fiio/music/util/VerticalSeekBar;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 841
    :goto_0
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_c

    .line 845
    const-string v0, "MusicMode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->sp:Landroid/content/SharedPreferences;

    .line 846
    const-string v0, "MusicGenre"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    .line 847
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "ModeFlag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 848
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->resetss:[F

    invoke-virtual {v1, v2}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    .line 850
    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 851
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pop"

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 869
    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->closeJudgment:Z

    if-eqz v0, :cond_15

    .line 870
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->fiioMediaPlayer:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->resetss:[F

    invoke-virtual {v0, v1, v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setEqualizer(Z[F)V

    .line 876
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->beziercurvechart:Lcom/fiio/music/widget/BezierCurveChart;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->defauleValue:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/widget/BezierCurveChart;->a(Ljava/util/List;[Ljava/lang/String;)V

    .line 878
    const-string v0, "closeparamter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->closespPreferences:Landroid/content/SharedPreferences;

    .line 879
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->closespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "close"

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 880
    return-void

    .line 765
    :pswitch_0
    new-instance v1, Lcom/fiio/music/widget/a;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v0}, Lcom/fiio/music/widget/a;-><init>(FF)V

    .line 766
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 767
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 772
    :pswitch_1
    new-instance v1, Lcom/fiio/music/widget/a;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2, v0}, Lcom/fiio/music/widget/a;-><init>(FF)V

    .line 773
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    .line 774
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 776
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 779
    :pswitch_2
    new-instance v1, Lcom/fiio/music/widget/a;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2, v0}, Lcom/fiio/music/widget/a;-><init>(FF)V

    .line 780
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_3

    .line 781
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 783
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 786
    :pswitch_3
    new-instance v1, Lcom/fiio/music/widget/a;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {v1, v2, v0}, Lcom/fiio/music/widget/a;-><init>(FF)V

    .line 787
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_4

    .line 788
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 790
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 793
    :pswitch_4
    new-instance v1, Lcom/fiio/music/widget/a;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v1, v2, v0}, Lcom/fiio/music/widget/a;-><init>(FF)V

    .line 794
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_5

    .line 795
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 797
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 800
    :pswitch_5
    new-instance v1, Lcom/fiio/music/widget/a;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-direct {v1, v2, v0}, Lcom/fiio/music/widget/a;-><init>(FF)V

    .line 801
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_6

    .line 802
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 804
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 807
    :pswitch_6
    new-instance v1, Lcom/fiio/music/widget/a;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-direct {v1, v2, v0}, Lcom/fiio/music/widget/a;-><init>(FF)V

    .line 808
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x7

    if-le v0, v2, :cond_7

    .line 809
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 811
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 814
    :pswitch_7
    new-instance v1, Lcom/fiio/music/widget/a;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {v1, v2, v0}, Lcom/fiio/music/widget/a;-><init>(FF)V

    .line 815
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x8

    if-le v0, v2, :cond_8

    .line 816
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 818
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 821
    :pswitch_8
    new-instance v1, Lcom/fiio/music/widget/a;

    const/high16 v2, 0x41100000    # 9.0f

    invoke-direct {v1, v2, v0}, Lcom/fiio/music/widget/a;-><init>(FF)V

    .line 822
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x9

    if-le v0, v2, :cond_9

    .line 823
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 825
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 828
    :pswitch_9
    new-instance v1, Lcom/fiio/music/widget/a;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v1, v2, v0}, Lcom/fiio/music/widget/a;-><init>(FF)V

    .line 829
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_a

    .line 830
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 832
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 833
    new-instance v0, Lcom/fiio/music/widget/a;

    const/high16 v1, 0x41300000    # 11.0f

    const v2, -0x3ace8000    # -2840.0f

    invoke-direct {v0, v1, v2}, Lcom/fiio/music/widget/a;-><init>(FF)V

    .line 834
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_b

    .line 835
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 837
    :cond_b
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 842
    :cond_c
    const-wide v2, 0x3f714e9a52355d06L    # 0.004225352112676056

    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/a;

    iget v0, v0, Lcom/fiio/music/widget/a;->c:F

    const v4, 0x45318000    # 2840.0f

    add-float/2addr v0, v4

    float-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-float v0, v2

    neg-float v0, v0

    iput v0, p0, Lcom/fiio/music/activity/EqActivity;->XForResetss:F

    .line 843
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->resetss:[F

    add-int/lit8 v2, v1, -0x1

    iget v3, p0, Lcom/fiio/music/activity/EqActivity;->XForResetss:F

    aput v3, v0, v2

    .line 841
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 852
    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 853
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "resetss"

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 854
    :cond_e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 855
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rock"

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 856
    :cond_f
    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 857
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dance"

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 858
    :cond_10
    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    .line 859
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blues"

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 860
    :cond_11
    const/4 v1, 0x6

    if-ne v0, v1, :cond_12

    .line 861
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "metal"

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 862
    :cond_12
    const/4 v1, 0x7

    if-ne v0, v1, :cond_13

    .line 863
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Voice"

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 864
    :cond_13
    const/16 v1, 0x8

    if-ne v0, v1, :cond_14

    .line 865
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "classic"

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 866
    :cond_14
    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 867
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->genrespPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "jazz"

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    .line 873
    :cond_15
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->fiioMediaPlayer:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->resetss:[F

    invoke-virtual {v0, v1, v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setEqualizer(Z[F)V

    goto/16 :goto_3

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00ca
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 908
    const-string v0, "eqactivity"

    invoke-virtual {p0, v0, v3}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    .line 909
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 910
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    const-string v1, "resetss"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->pointsForJson:Ljava/lang/String;

    .line 911
    new-instance v0, Lcom/a/a/aq;

    invoke-direct {v0}, Lcom/a/a/aq;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    .line 912
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->pointsForJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 913
    new-instance v0, Lcom/fiio/music/activity/aq;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/aq;-><init>(Lcom/fiio/music/activity/EqActivity;)V

    .line 914
    invoke-virtual {v0}, Lcom/fiio/music/activity/aq;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 915
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->pointsForJson:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/a/a/aq;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    const-string v1, "closeJudgment"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->closeJudgment:Z

    .line 919
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ResetssValue"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    .line 920
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 921
    new-instance v0, Lcom/fiio/music/activity/ar;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/ar;-><init>(Lcom/fiio/music/activity/EqActivity;)V

    invoke-virtual {v0}, Lcom/fiio/music/activity/ar;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 922
    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->resetssFotJson:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/a/a/aq;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->resetss:[F

    .line 923
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->closeJudgment:Z

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->fiioMediaPlayer:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->resetss:[F

    invoke-virtual {v0, v4, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setEqualizer(Z[F)V

    .line 928
    :cond_1
    invoke-direct {p0}, Lcom/fiio/music/activity/EqActivity;->SeekBarsetProgressLow()V

    .line 929
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->beziercurvechart:Lcom/fiio/music/widget/BezierCurveChart;

    iget-object v1, p0, Lcom/fiio/music/activity/EqActivity;->points:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fiio/music/activity/EqActivity;->defauleValue:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/widget/BezierCurveChart;->a(Ljava/util/List;[Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->beziercurvechart:Lcom/fiio/music/widget/BezierCurveChart;

    invoke-virtual {v0}, Lcom/fiio/music/widget/BezierCurveChart;->invalidate()V

    .line 935
    :cond_2
    const-string v0, "isFirst"

    invoke-virtual {p0, v0, v3}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/EqActivity;->FirstspPreferences:Landroid/content/SharedPreferences;

    .line 936
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->FirstspPreferences:Landroid/content/SharedPreferences;

    const-string v1, "isfirst"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->firstEnter:Z

    .line 937
    iget-boolean v0, p0, Lcom/fiio/music/activity/EqActivity;->firstEnter:Z

    if-eqz v0, :cond_3

    .line 938
    invoke-direct {p0}, Lcom/fiio/music/activity/EqActivity;->setfirstPoints()V

    .line 943
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    const-string v1, "checked"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 944
    iget-object v0, p0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    const-string v2, "checkId"

    const v3, 0x7f0b00be

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 945
    invoke-virtual {p0, v2}, Lcom/fiio/music/activity/EqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 946
    if-eqz v0, :cond_4

    instance-of v3, v0, Landroid/widget/RadioButton;

    if-eqz v3, :cond_4

    .line 947
    check-cast v0, Landroid/widget/RadioButton;

    .line 948
    iput-boolean v4, p0, Lcom/fiio/music/activity/EqActivity;->JustForOnce:Z

    .line 949
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 950
    new-instance v3, Lcom/fiio/music/activity/z;

    invoke-direct {v3, p0, v2, v1}, Lcom/fiio/music/activity/z;-><init>(Lcom/fiio/music/activity/EqActivity;IZ)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 959
    invoke-virtual {v0}, Landroid/widget/RadioButton;->performClick()Z

    .line 962
    :cond_4
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 963
    return-void
.end method

.method public setProgress(Lcom/fiio/music/util/VerticalSeekBar;D)D
    .locals 2

    .prologue
    .line 1007
    invoke-virtual {p1}, Lcom/fiio/music/util/VerticalSeekBar;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1039
    :goto_0
    return-wide p2

    .line 1009
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/EqActivity;->calculateOffsetLow(I)D

    move-result-wide p2

    goto :goto_0

    .line 1012
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/EqActivity;->calculateOffsetLow(I)D

    move-result-wide p2

    goto :goto_0

    .line 1015
    :pswitch_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/EqActivity;->calculateOffsetLow(I)D

    move-result-wide p2

    goto :goto_0

    .line 1018
    :pswitch_3
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/EqActivity;->calculateOffsetLow(I)D

    move-result-wide p2

    goto :goto_0

    .line 1021
    :pswitch_4
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/EqActivity;->calculateOffsetLow(I)D

    move-result-wide p2

    goto :goto_0

    .line 1024
    :pswitch_5
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/EqActivity;->calculateOffsetLow(I)D

    move-result-wide p2

    goto :goto_0

    .line 1027
    :pswitch_6
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/EqActivity;->calculateOffsetLow(I)D

    move-result-wide p2

    goto :goto_0

    .line 1030
    :pswitch_7
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/EqActivity;->calculateOffsetLow(I)D

    move-result-wide p2

    goto :goto_0

    .line 1033
    :pswitch_8
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/EqActivity;->calculateOffsetLow(I)D

    move-result-wide p2

    goto :goto_0

    .line 1036
    :pswitch_9
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/fiio/music/activity/EqActivity;->calculateOffsetLow(I)D

    move-result-wide p2

    goto :goto_0

    .line 1007
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00ca
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
