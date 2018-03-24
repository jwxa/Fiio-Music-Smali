.class public Lcom/fiio/music/activity/AboutActivity;
.super Lcom/fiio/music/activity/SettingActivity;
.source "AboutActivity.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Z

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/fiio/music/network/bean/DownloadInfo;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/fiio/music/activity/SettingActivity;-><init>()V

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/AboutActivity;->i:I

    .line 39
    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 148
    const/16 v2, 0x4000

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/fiio/music/activity/AboutActivity;)V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fiio/music/activity/UserExperienceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ChangeStyle"

    iget-boolean v2, p0, Lcom/fiio/music/activity/AboutActivity;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "switch"

    sget v2, Lcom/fiio/music/activity/UserExperienceActivity;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/AboutActivity;Lcom/fiio/music/network/bean/DownloadInfo;)V
    .locals 7

    .prologue
    const v6, 0x7f080046

    .line 194
    new-instance v0, Lcom/fiio/music/custom/g;

    invoke-direct {v0, p0}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->show()V

    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040154

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    const v0, 0x7f0b0388

    invoke-virtual {v3, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/DownloadInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0389

    invoke-virtual {v3, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f040155

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/DownloadInfo;->getUpdateLog()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0b038a

    invoke-virtual {v3, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b038b

    invoke-virtual {v3, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b038c

    invoke-virtual {v3, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fiio/music/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/fiio/music/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/fiio/music/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v4, Lcom/fiio/music/activity/d;

    invoke-direct {v4, p0, v3}, Lcom/fiio/music/activity/d;-><init>(Lcom/fiio/music/activity/AboutActivity;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/fiio/music/activity/e;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/activity/e;-><init>(Lcom/fiio/music/activity/AboutActivity;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/fiio/music/activity/f;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/activity/f;-><init>(Lcom/fiio/music/activity/AboutActivity;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/AboutActivity;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 256
    const-string v0, "OpenFile"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/fiio/music/activity/AboutActivity;)Lcom/fiio/music/network/bean/DownloadInfo;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->h:Lcom/fiio/music/network/bean/DownloadInfo;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/fiio/music/activity/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/fiio/music/activity/AboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 55
    const/16 v1, 0x100

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ChangeStyle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/AboutActivity;->b:Z

    .line 60
    invoke-virtual {p0}, Lcom/fiio/music/activity/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    .line 59
    iput v0, p0, Lcom/fiio/music/activity/AboutActivity;->i:I

    .line 62
    iget v0, p0, Lcom/fiio/music/activity/AboutActivity;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 63
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AboutActivity;->setContentView(I)V

    .line 71
    :cond_1
    :goto_0
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 72
    invoke-virtual {p0}, Lcom/fiio/music/activity/AboutActivity;->b()V

    .line 73
    invoke-virtual {p0}, Lcom/fiio/music/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AboutActivity;->a(Ljava/lang/String;)V

    .line 74
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->a:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->a:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/fiio/music/activity/AboutActivity;->a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->c:Landroid/widget/RelativeLayout;

    .line 77
    iget-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/fiio/music/activity/a;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/a;-><init>(Lcom/fiio/music/activity/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->d:Landroid/widget/RelativeLayout;

    .line 86
    iget-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/fiio/music/activity/b;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/b;-><init>(Lcom/fiio/music/activity/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->f:Landroid/widget/RelativeLayout;

    .line 96
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->g:Landroid/widget/TextView;

    .line 98
    new-instance v0, Lcom/fiio/music/b/f;

    invoke-direct {v0, p0}, Lcom/fiio/music/b/f;-><init>(Landroid/content/Context;)V

    const-string v1, "http://apppack.fiio.net/FiiOMusic.apk"

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/f;->a(Ljava/lang/String;)Lcom/fiio/music/network/bean/DownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->h:Lcom/fiio/music/network/bean/DownloadInfo;

    iget-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->h:Lcom/fiio/music/network/bean/DownloadInfo;

    if-eqz v0, :cond_2

    const-string v0, "AboutActivity"

    iget-object v1, p0, Lcom/fiio/music/activity/AboutActivity;->h:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v1}, Lcom/fiio/music/network/bean/DownloadInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->h:Lcom/fiio/music/network/bean/DownloadInfo;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/fiio/a/a/a;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SplashActivity.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->h:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/DownloadInfo;->getVersionCode()I

    move-result v0

    invoke-static {p0}, Lcom/fiio/music/util/h;->d(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->h:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/DownloadInfo;->getDownloadState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fiio/music/activity/AboutActivity;->h:Lcom/fiio/music/network/bean/DownloadInfo;

    invoke-virtual {v1}, Lcom/fiio/music/network/bean/DownloadInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->g:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/AboutActivity;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/fiio/music/activity/c;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/c;-><init>(Lcom/fiio/music/activity/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void

    .line 64
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/AboutActivity;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 65
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AboutActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 66
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/AboutActivity;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 67
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AboutActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 68
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/AboutActivity;->i:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 69
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/AboutActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 129
    invoke-super {p0}, Lcom/fiio/music/activity/SettingActivity;->onDestroy()V

    .line 130
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 161
    new-instance v1, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    .line 162
    const/16 v2, 0x19

    if-ne p1, v2, :cond_0

    .line 163
    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    .line 169
    :goto_0
    return v0

    .line 165
    :cond_0
    const/16 v2, 0x18

    if-ne p1, v2, :cond_1

    .line 166
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/fiio/music/activity/SettingActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
