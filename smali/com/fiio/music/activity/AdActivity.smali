.class public Lcom/fiio/music/activity/AdActivity;
.super Landroid/app/Activity;
.source "AdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/util/Timer;

.field private g:I

.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/fiio/music/activity/AdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/AdActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/fiio/music/activity/AdActivity;->g:I

    .line 41
    new-instance v0, Lcom/fiio/music/activity/g;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/g;-><init>(Lcom/fiio/music/activity/AdActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/AdActivity;->h:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/AdActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fiio/music/activity/AdActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/fiio/music/activity/AdActivity;I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/fiio/music/activity/AdActivity;->g:I

    return-void
.end method

.method static synthetic b(Lcom/fiio/music/activity/AdActivity;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/fiio/music/activity/AdActivity;->g:I

    return v0
.end method

.method static synthetic c(Lcom/fiio/music/activity/AdActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fiio/music/activity/AdActivity;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 142
    :pswitch_1
    invoke-virtual {p0}, Lcom/fiio/music/activity/AdActivity;->finish()V

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-virtual {p0}, Lcom/fiio/music/activity/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    sget-object v1, Lcom/fiio/music/activity/AdActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 151
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 153
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v1}, Lcom/fiio/music/activity/AdActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0037
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v5, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/fiio/music/activity/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 62
    const/high16 v1, 0x480000

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 63
    invoke-virtual {p0}, Lcom/fiio/music/activity/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/fiio/music/activity/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 66
    const/high16 v1, 0xc000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 68
    invoke-virtual {p0}, Lcom/fiio/music/activity/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 69
    const/16 v4, 0x1702

    invoke-virtual {v1, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 72
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 76
    invoke-virtual {v0, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 77
    invoke-virtual {v0, v5}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 80
    :cond_0
    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AdActivity;->setContentView(I)V

    .line 82
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/AdActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/AdActivity;->c:Landroid/widget/ImageView;

    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/activity/AdActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/fiio/music/activity/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "filePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/fiio/music/activity/AdActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/AdActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/fiio/music/activity/AdActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fiio/music/activity/AdActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/AdActivity;->f:Ljava/util/Timer;

    .line 84
    iget-object v0, p0, Lcom/fiio/music/activity/AdActivity;->f:Ljava/util/Timer;

    new-instance v1, Lcom/fiio/music/activity/h;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/h;-><init>(Lcom/fiio/music/activity/AdActivity;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 86
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/fiio/music/activity/AdActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 112
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    const-string v0, "FiiOMusic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/AdActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/fiio/music/activity/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "no"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    sget-object v2, Lcom/fiio/music/activity/AdActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onResume NO = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v2, "no"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    return-void
.end method
