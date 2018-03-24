.class public Lcom/fiio/music/activity/DlnaActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DlnaActivity.java"


# static fields
.field public static final GET_IP_FAIL:I = 0x0

.field public static final GET_IP_SUC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Dendy-DlnaActivity"


# instance fields
.field private STYLE_PARAMTER:I

.field private UI_IS_CHANGE:Z

.field private deviceListRegistryListener:Lcom/fiio/music/activity/t;

.field private dlnaFirstFragment:Lcom/fiio/music/fragment/DlnaFirstFragment;

.field private dlnaFragment:Lcom/fiio/music/fragment/DlnaFragment;

.field private exitTime:J

.field public fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private hostAddress:Ljava/lang/String;

.field private hostName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDevList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fiio/music/d/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private mHandle:Landroid/os/Handler;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private upnpService:Lorg/fourthline/cling/android/AndroidUpnpService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->mDevList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->fragments:Ljava/util/List;

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fiio/music/activity/DlnaActivity;->exitTime:J

    .line 64
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/activity/DlnaActivity;->STYLE_PARAMTER:I

    .line 66
    new-instance v0, Lcom/fiio/music/activity/q;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/q;-><init>(Lcom/fiio/music/activity/DlnaActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 434
    new-instance v0, Lcom/fiio/music/activity/r;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/r;-><init>(Lcom/fiio/music/activity/DlnaActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->mHandle:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/fiio/music/activity/DlnaActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->mDevList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiio/music/activity/DlnaActivity;Lorg/fourthline/cling/android/AndroidUpnpService;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/fiio/music/activity/DlnaActivity;->upnpService:Lorg/fourthline/cling/android/AndroidUpnpService;

    return-void
.end method

.method static synthetic access$10(Lcom/fiio/music/activity/DlnaActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/fiio/music/activity/DlnaActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->hostAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/fiio/music/activity/DlnaActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->mHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fiio/music/activity/DlnaActivity;)Lorg/fourthline/cling/android/AndroidUpnpService;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->upnpService:Lorg/fourthline/cling/android/AndroidUpnpService;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fiio/music/activity/DlnaActivity;)Lcom/fiio/music/activity/t;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->deviceListRegistryListener:Lcom/fiio/music/activity/t;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fiio/music/activity/DlnaActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fiio/music/activity/DlnaActivity;Ljava/net/InetAddress;)V
    .locals 0

    .prologue
    .line 495
    invoke-static {p1}, Lcom/fiio/music/activity/FiiOMusicApplication;->a(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$6(Lcom/fiio/music/activity/DlnaActivity;)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/fiio/music/activity/DlnaActivity;->setIpInfo()V

    return-void
.end method

.method static synthetic access$7(Lcom/fiio/music/activity/DlnaActivity;)Lcom/fiio/music/fragment/DlnaFirstFragment;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFirstFragment:Lcom/fiio/music/fragment/DlnaFirstFragment;

    return-object v0
.end method

.method static synthetic access$8(Lcom/fiio/music/activity/DlnaActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fiio/music/activity/DlnaActivity;->hostName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/fiio/music/activity/DlnaActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fiio/music/activity/DlnaActivity;->hostAddress:Ljava/lang/String;

    return-void
.end method

.method private getIp()V
    .locals 2

    .prologue
    .line 465
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fiio/music/activity/s;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/s;-><init>(Lcom/fiio/music/activity/DlnaActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 490
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 492
    return-void
.end method

.method private obtainFragmentTransaction()Landroid/support/v4/app/FragmentTransaction;
    .locals 3

    .prologue
    const v2, 0x10a0001

    const/high16 v1, 0x10a0000

    .line 212
    invoke-virtual {p0}, Lcom/fiio/music/activity/DlnaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 214
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 216
    return-object v0
.end method

.method private setIp(Ljava/net/InetAddress;)V
    .locals 0

    .prologue
    .line 496
    invoke-static {p1}, Lcom/fiio/music/activity/FiiOMusicApplication;->a(Ljava/net/InetAddress;)V

    .line 497
    return-void
.end method

.method private setIpInfo()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->hostName:Ljava/lang/String;

    invoke-static {v0}, Lcom/fiio/music/activity/FiiOMusicApplication;->b(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->hostAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/fiio/music/activity/FiiOMusicApplication;->a(Ljava/lang/String;)V

    .line 502
    return-void
.end method


# virtual methods
.method public commitToFileListFragment()V
    .locals 3

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/fiio/music/activity/DlnaActivity;->obtainFragmentTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFirstFragment:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/DlnaFirstFragment;->onPause()V

    .line 222
    iget-object v1, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFragment:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/DlnaFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFragment:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/DlnaFragment;->onResume()V

    .line 228
    :goto_0
    iget-object v1, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFirstFragment:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 229
    iget-object v1, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFragment:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 230
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 231
    return-void

    .line 226
    :cond_0
    const v1, 0x7f0b009c

    iget-object v2, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFragment:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/fiio/music/activity/DlnaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/activity/DlnaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ChangeStyle"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fiio/music/activity/DlnaActivity;->UI_IS_CHANGE:Z

    .line 155
    invoke-virtual {p0}, Lcom/fiio/music/activity/DlnaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/activity/DlnaActivity;->STYLE_PARAMTER:I

    .line 157
    iget v0, p0, Lcom/fiio/music/activity/DlnaActivity;->STYLE_PARAMTER:I

    if-ne v0, v4, :cond_2

    .line 158
    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/DlnaActivity;->setContentView(I)V

    .line 166
    :cond_1
    :goto_0
    const-string v0, "zxy----"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  dlna   UI_IS_CHANGE  :   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/fiio/music/activity/DlnaActivity;->UI_IS_CHANGE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iput-object p0, p0, Lcom/fiio/music/activity/DlnaActivity;->mContext:Landroid/content/Context;

    .line 170
    new-instance v0, Lcom/fiio/music/fragment/DlnaFragment;

    invoke-direct {v0}, Lcom/fiio/music/fragment/DlnaFragment;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFragment:Lcom/fiio/music/fragment/DlnaFragment;

    .line 171
    invoke-direct {p0}, Lcom/fiio/music/activity/DlnaActivity;->getIp()V

    .line 173
    new-instance v0, Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-direct {v0}, Lcom/fiio/music/fragment/DlnaFirstFragment;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFirstFragment:Lcom/fiio/music/fragment/DlnaFirstFragment;

    .line 174
    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFirstFragment:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFragment:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p0}, Lcom/fiio/music/activity/DlnaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 177
    const v2, 0x7f0b009c

    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->fragments:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 178
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 180
    new-instance v0, Lcom/fiio/music/activity/t;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/t;-><init>(Lcom/fiio/music/activity/DlnaActivity;)V

    iput-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->deviceListRegistryListener:Lcom/fiio/music/activity/t;

    .line 182
    invoke-virtual {p0}, Lcom/fiio/music/activity/DlnaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 183
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    iget-object v2, p0, Lcom/fiio/music/activity/DlnaActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 182
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 187
    return-void

    .line 159
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/DlnaActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 160
    const v0, 0x7f040039

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/DlnaActivity;->setContentView(I)V

    goto :goto_0

    .line 161
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/DlnaActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 162
    const v0, 0x7f04003a

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/DlnaActivity;->setContentView(I)V

    goto :goto_0

    .line 163
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/DlnaActivity;->STYLE_PARAMTER:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 164
    const v0, 0x7f04003b

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/DlnaActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 419
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 420
    const-string v0, "Dendy-DlnaActivity"

    const-string v1, "onDestroy........."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0x18

    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 507
    if-eq p1, v4, :cond_0

    if-ne p1, v3, :cond_3

    .line 508
    :cond_0
    new-instance v1, Lcom/fiio/music/widget/VolumeDialog;

    invoke-direct {v1, p0}, Lcom/fiio/music/widget/VolumeDialog;-><init>(Landroid/content/Context;)V

    .line 509
    if-ne p1, v4, :cond_2

    .line 510
    invoke-virtual {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    .line 550
    :cond_1
    :goto_0
    return v0

    .line 512
    :cond_2
    if-ne p1, v3, :cond_7

    .line 513
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fiio/music/widget/VolumeDialog;->a(Z)V

    goto :goto_0

    .line 516
    :cond_3
    if-ne p1, v2, :cond_7

    .line 517
    iget-object v1, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFragment:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/DlnaFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFragment:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/DlnaFragment;->onBackKey()Z

    move-result v1

    if-nez v1, :cond_1

    .line 519
    :cond_4
    iget-object v1, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFragment:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/DlnaFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFragment:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/DlnaFragment;->onBackKey()Z

    move-result v1

    if-nez v1, :cond_6

    .line 520
    const-string v1, "xyz"

    const-string v2, "xyz else "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-direct {p0}, Lcom/fiio/music/activity/DlnaActivity;->obtainFragmentTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 523
    iget-object v2, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFragment:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/DlnaFragment;->onPause()V

    .line 525
    iget-object v2, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFirstFragment:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/DlnaFirstFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 527
    iget-object v2, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFirstFragment:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-virtual {v2}, Lcom/fiio/music/fragment/DlnaFirstFragment;->onResume()V

    .line 531
    :goto_1
    iget-object v2, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFragment:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 532
    iget-object v2, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFirstFragment:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 533
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 529
    :cond_5
    const v2, 0x7f0b009c

    iget-object v3, p0, Lcom/fiio/music/activity/DlnaActivity;->dlnaFirstFragment:Lcom/fiio/music/fragment/DlnaFirstFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 537
    :cond_6
    if-ne p1, v2, :cond_7

    .line 538
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7

    .line 544
    invoke-virtual {p0}, Lcom/fiio/music/activity/DlnaActivity;->finish()V

    goto :goto_0

    .line 550
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public searchNetwork()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->upnpService:Lorg/fourthline/cling/android/AndroidUpnpService;

    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_0
    const v0, 0x7f0c0003

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 431
    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->upnpService:Lorg/fourthline/cling/android/AndroidUpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/android/AndroidUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->removeAllRemoteDevices()V

    .line 432
    iget-object v0, p0, Lcom/fiio/music/activity/DlnaActivity;->upnpService:Lorg/fourthline/cling/android/AndroidUpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/android/AndroidUpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->search()V

    goto :goto_0
.end method

.method public turnToFragment(Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    const v6, 0x10a0001

    const/high16 v5, 0x10a0000

    .line 243
    invoke-virtual {p0}, Lcom/fiio/music/activity/DlnaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 245
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 250
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 252
    if-nez v1, :cond_0

    .line 254
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    :try_start_1
    invoke-virtual {v0, p3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v0

    .line 263
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 267
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 269
    invoke-virtual {v0, v5, v6, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 275
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 276
    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v4, 0x7f0b009c

    invoke-virtual {v2, v4, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 283
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 284
    return-void

    .line 257
    :catch_0
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 258
    :catch_1
    move-exception v0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 258
    :catch_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    .line 257
    :catch_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method
