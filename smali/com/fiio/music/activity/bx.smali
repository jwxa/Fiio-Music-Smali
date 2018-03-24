.class final Lcom/fiio/music/activity/bx;
.super Landroid/content/BroadcastReceiver;
.source "ListMainActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;

.field private b:Landroid/media/AudioManager;

.field private c:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 2683
    iput-object p1, p0, Lcom/fiio/music/activity/bx;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/activity/ListMainActivity;B)V
    .locals 0

    .prologue
    .line 2683
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/bx;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2690
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/fiio/music/activity/bx;->b:Landroid/media/AudioManager;

    .line 2691
    const-string v0, "max_voice"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/bx;->c:Landroid/content/SharedPreferences;

    .line 2692
    iget-object v0, p0, Lcom/fiio/music/activity/bx;->c:Landroid/content/SharedPreferences;

    const-string v1, "MAX_VOICE"

    const/16 v2, 0x78

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2693
    iget-object v1, p0, Lcom/fiio/music/activity/bx;->b:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 2695
    if-le v1, v0, :cond_0

    .line 2696
    iget-object v1, p0, Lcom/fiio/music/activity/bx;->b:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2698
    :cond_0
    return-void
.end method
