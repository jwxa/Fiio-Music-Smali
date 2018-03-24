.class public Lcom/fiio/music/activity/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# static fields
.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# instance fields
.field a:Z

.field f:Landroid/net/Uri;

.field private g:I

.field private i:Landroid/content/Context;

.field private j:Landroid/content/SharedPreferences;

.field private k:Landroid/os/Handler;

.field private l:Lcom/fiio/music/service/h;

.field private m:Lcom/fiio/music/widget/VolumeDialog;

.field private n:Lcom/fiio/music/service/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "/FiiOMusic"

    sput-object v0, Lcom/fiio/music/activity/SplashActivity;->h:Ljava/lang/String;

    .line 57
    const-string v0, "/lrc"

    sput-object v0, Lcom/fiio/music/activity/SplashActivity;->b:Ljava/lang/String;

    .line 58
    const-string v0, "/crash"

    sput-object v0, Lcom/fiio/music/activity/SplashActivity;->c:Ljava/lang/String;

    .line 59
    const-string v0, "/album"

    sput-object v0, Lcom/fiio/music/activity/SplashActivity;->d:Ljava/lang/String;

    .line 60
    const-string v0, "/log"

    sput-object v0, Lcom/fiio/music/activity/SplashActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/fiio/music/activity/SplashActivity;->a:Z

    .line 52
    iput v0, p0, Lcom/fiio/music/activity/SplashActivity;->g:I

    .line 67
    new-instance v0, Lcom/fiio/music/activity/gv;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/gv;-><init>(Lcom/fiio/music/activity/SplashActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->k:Landroid/os/Handler;

    .line 204
    new-instance v0, Lcom/fiio/music/activity/gw;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/gw;-><init>(Lcom/fiio/music/activity/SplashActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->n:Lcom/fiio/music/service/l;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/SplashActivity;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "changestyle"

    invoke-virtual {p0, v1, v4}, Lcom/fiio/music/activity/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "styleChange"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->a(Z)V

    const-string v2, "changeStyleboolean"

    const-string v3, "styleChange"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v1, p0, Lcom/fiio/music/activity/SplashActivity;->g:I

    if-ne v1, v5, :cond_0

    const-string v1, "OPEN_FLAG"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/fiio/music/activity/SplashActivity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/fiio/music/activity/SplashActivity;)V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fiio/music/activity/GuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/fiio/music/activity/SplashActivity;->finish()V

    return-void
.end method

.method static synthetic c(Lcom/fiio/music/activity/SplashActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/fiio/music/activity/SplashActivity;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->l:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method static synthetic e(Lcom/fiio/music/activity/SplashActivity;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/fiio/music/activity/SplashActivity;->g:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0xbb8

    const/16 v4, 0x3e8

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 89
    const v0, 0x7f040139

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SplashActivity;->setContentView(I)V

    .line 90
    iput-object p0, p0, Lcom/fiio/music/activity/SplashActivity;->i:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/fiio/music/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    const-string v1, "msg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/SplashActivity;->g:I

    .line 94
    const-string v0, "first_pref"

    invoke-virtual {p0, v0, v2}, Lcom/fiio/music/activity/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->j:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/fiio/music/service/h;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/h;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->l:Lcom/fiio/music/service/h;

    iget-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->l:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/activity/SplashActivity;->n:Lcom/fiio/music/service/l;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/l;)V

    iget-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->l:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->b()V

    invoke-virtual {p0}, Lcom/fiio/music/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->f:Landroid/net/Uri;

    const-string v0, ""

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/fiio/music/activity/SplashActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/SplashActivity;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fiio/music/activity/SplashActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/fiio/music/activity/SplashActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/SplashActivity;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fiio/music/activity/SplashActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/fiio/music/activity/SplashActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/SplashActivity;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fiio/music/activity/SplashActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/fiio/music/activity/SplashActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/SplashActivity;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fiio/music/activity/SplashActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/fiio/music/activity/SplashActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/SplashActivity;->e:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/fiio/music/activity/SplashActivity;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/fiio/music/activity/SplashActivity;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/fiio/music/activity/SplashActivity;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/fiio/music/activity/SplashActivity;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/SplashActivity;->g:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->k:Landroid/os/Handler;

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 101
    :goto_0
    return-void

    .line 94
    :cond_5
    const-string v0, "xyz-SplashActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mimeTypeIntent,mUri="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/SplashActivity;->f:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->j:Landroid/content/SharedPreferences;

    const-string v1, "isFirstIn"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/SplashActivity;->a:Z

    iget-boolean v0, p0, Lcom/fiio/music/activity/SplashActivity;->a:Z

    if-nez v0, :cond_7

    const-string v0, "xyz-SplashActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isFirstIn,mUri="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/SplashActivity;->f:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->f:Landroid/net/Uri;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->k:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->k:Landroid/os/Handler;

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->k:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->l:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->g()V

    .line 242
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 243
    iget-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->m:Lcom/fiio/music/widget/VolumeDialog;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/fiio/music/activity/SplashActivity;->m:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->b()V

    .line 246
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 247
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 193
    new-instance v1, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fiio/music/activity/SplashActivity;->m:Lcom/fiio/music/widget/VolumeDialog;

    .line 194
    const/16 v1, 0x19

    if-ne p1, v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/fiio/music/activity/SplashActivity;->m:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    .line 201
    :goto_0
    return v0

    .line 197
    :cond_0
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/fiio/music/activity/SplashActivity;->m:Lcom/fiio/music/widget/VolumeDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
