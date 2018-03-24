.class public Lcom/fiio/music/test/TestActivityEnter;
.super Landroid/app/Activity;
.source "TestActivityEnter.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/fiio/music/service/z;

.field private g:Landroid/widget/TextView;

.field private h:[Ljava/lang/String;

.field private i:I

.field private j:Landroid/content/ServiceConnection;

.field private k:Lcom/fiio/music/g/a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/fiio/music/test/TestActivityEnter;->a:Landroid/widget/Button;

    .line 44
    iput-object v0, p0, Lcom/fiio/music/test/TestActivityEnter;->b:Landroid/widget/Button;

    .line 45
    iput-object v0, p0, Lcom/fiio/music/test/TestActivityEnter;->c:Landroid/widget/Button;

    .line 46
    iput-object v0, p0, Lcom/fiio/music/test/TestActivityEnter;->d:Landroid/widget/Button;

    .line 47
    iput-object v0, p0, Lcom/fiio/music/test/TestActivityEnter;->e:Landroid/widget/Button;

    .line 50
    iput-object v0, p0, Lcom/fiio/music/test/TestActivityEnter;->g:Landroid/widget/TextView;

    .line 53
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 54
    const-string v1, "/sdcard/Music/a3.mp3"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 55
    const-string v2, "/sdcard/Music/a1.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 56
    const-string v2, "/sdcard/Music/a2.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 57
    const-string v2, "/sdcard/Music/a4.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 58
    const-string v2, "/sdcard/Music/a5.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 59
    const-string v2, "/sdcard/Music/a6.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 60
    const-string v2, "/sdcard/Music/a7.mp3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/fiio/music/test/TestActivityEnter;->h:[Ljava/lang/String;

    .line 62
    iput v3, p0, Lcom/fiio/music/test/TestActivityEnter;->i:I

    .line 136
    new-instance v0, Lcom/fiio/music/test/d;

    invoke-direct {v0, p0}, Lcom/fiio/music/test/d;-><init>(Lcom/fiio/music/test/TestActivityEnter;)V

    iput-object v0, p0, Lcom/fiio/music/test/TestActivityEnter;->j:Landroid/content/ServiceConnection;

    .line 157
    new-instance v0, Lcom/fiio/music/test/e;

    invoke-direct {v0, p0}, Lcom/fiio/music/test/e;-><init>(Lcom/fiio/music/test/TestActivityEnter;)V

    iput-object v0, p0, Lcom/fiio/music/test/TestActivityEnter;->k:Lcom/fiio/music/g/a;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/test/TestActivityEnter;)Lcom/fiio/music/service/z;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fiio/music/test/TestActivityEnter;->f:Lcom/fiio/music/service/z;

    return-object v0
.end method

.method static synthetic a(Lcom/fiio/music/test/TestActivityEnter;Lcom/fiio/music/service/z;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/fiio/music/test/TestActivityEnter;->f:Lcom/fiio/music/service/z;

    return-void
.end method

.method static synthetic b(Lcom/fiio/music/test/TestActivityEnter;)Lcom/fiio/music/g/a;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fiio/music/test/TestActivityEnter;->k:Lcom/fiio/music/g/a;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f04014f

    invoke-virtual {p0, v0}, Lcom/fiio/music/test/TestActivityEnter;->setContentView(I)V

    .line 118
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fiio/music/service/MediaPlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    iget-object v1, p0, Lcom/fiio/music/test/TestActivityEnter;->j:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    .line 121
    invoke-virtual {p0, v0, v1, v2}, Lcom/fiio/music/test/TestActivityEnter;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 124
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 129
    iget-object v0, p0, Lcom/fiio/music/test/TestActivityEnter;->j:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/fiio/music/test/TestActivityEnter;->unbindService(Landroid/content/ServiceConnection;)V

    .line 130
    iget-object v0, p0, Lcom/fiio/music/test/TestActivityEnter;->f:Lcom/fiio/music/service/z;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/fiio/music/test/TestActivityEnter;->f:Lcom/fiio/music/service/z;

    .line 132
    iget-object v1, p0, Lcom/fiio/music/test/TestActivityEnter;->k:Lcom/fiio/music/g/a;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/z;->b(Lcom/fiio/music/g/a;)V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/test/TestActivityEnter;->f:Lcom/fiio/music/service/z;

    .line 135
    :cond_0
    return-void
.end method
