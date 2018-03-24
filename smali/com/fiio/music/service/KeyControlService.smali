.class public Lcom/fiio/music/service/KeyControlService;
.super Landroid/app/Service;
.source "KeyControlService.java"


# instance fields
.field private a:Lcom/fiio/music/service/h;

.field private b:Landroid/media/AudioManager;

.field private c:Landroid/content/ComponentName;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Lcom/fiio/music/service/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/fiio/music/service/KeyControlService;->d:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/service/KeyControlService;->e:Z

    .line 39
    iput v1, p0, Lcom/fiio/music/service/KeyControlService;->f:I

    .line 41
    new-instance v0, Lcom/fiio/music/service/f;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/f;-><init>(Lcom/fiio/music/service/KeyControlService;)V

    iput-object v0, p0, Lcom/fiio/music/service/KeyControlService;->g:Landroid/content/BroadcastReceiver;

    .line 166
    new-instance v0, Lcom/fiio/music/service/g;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/g;-><init>(Lcom/fiio/music/service/KeyControlService;)V

    iput-object v0, p0, Lcom/fiio/music/service/KeyControlService;->h:Lcom/fiio/music/service/l;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/fiio/music/service/KeyControlService;I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/fiio/music/service/KeyControlService;->f:I

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/service/KeyControlService;Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/fiio/music/service/KeyControlService;->d:Z

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcom/fiio/music/e/a/b;->a()Lcom/fiio/music/e/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/e/a/b;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/fiio/music/service/KeyControlService;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/fiio/music/service/KeyControlService;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/fiio/music/service/KeyControlService;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/fiio/music/service/KeyControlService;->f:I

    return v0
.end method

.method static synthetic b(Lcom/fiio/music/service/KeyControlService;I)V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "LOCK_ACTION_ON_META"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "song_flag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/KeyControlService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/fiio/music/service/KeyControlService;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fiio/music/service/KeyControlService;->a:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method static synthetic d(Lcom/fiio/music/service/KeyControlService;)V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fiio.music.service.meidaplayer"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "flag"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "seekToMsec"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/KeyControlService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 146
    const-string v0, "lipf_debug"

    const-string v1, ">>>>  enter   KeyControlService    "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Lcom/fiio/music/service/h;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/h;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/fiio/music/service/KeyControlService;->a:Lcom/fiio/music/service/h;

    .line 148
    iget-object v0, p0, Lcom/fiio/music/service/KeyControlService;->a:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/service/KeyControlService;->h:Lcom/fiio/music/service/l;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/l;)V

    .line 149
    iget-object v0, p0, Lcom/fiio/music/service/KeyControlService;->a:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->b()V

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    const-string v1, "lock_action_next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "lock_action_prve"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "lock_action_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "LOCK_ACTION_ON_META"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "com.android.intent.action.HOME_KEY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/fiio/music/service/KeyControlService;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/fiio/music/service/KeyControlService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/KeyControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/fiio/music/service/KeyControlService;->b:Landroid/media/AudioManager;

    .line 161
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/fiio/music/service/KeyControlService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 162
    const-class v2, Lcom/fiio/music/service/KeyControlService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iput-object v0, p0, Lcom/fiio/music/service/KeyControlService;->c:Landroid/content/ComponentName;

    .line 163
    iget-object v0, p0, Lcom/fiio/music/service/KeyControlService;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/fiio/music/service/KeyControlService;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 164
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 186
    iget-object v0, p0, Lcom/fiio/music/service/KeyControlService;->a:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->g()V

    .line 187
    iget-object v0, p0, Lcom/fiio/music/service/KeyControlService;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/KeyControlService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    iget-object v0, p0, Lcom/fiio/music/service/KeyControlService;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/fiio/music/service/KeyControlService;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 190
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 180
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
