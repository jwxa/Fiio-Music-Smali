.class public Lcom/audlabs/vipereffect/main/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cb_enableViper:Landroid/widget/CheckBox;

.field private mpm:Lcom/fiio/music/service/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dendy-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    const-class v1, Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/main/MainActivity;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/audlabs/vipereffect/main/MainActivity;->mpm:Lcom/fiio/music/service/h;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/main/MainActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainActivity;->cb_enableViper:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/main/MainActivity;Lcom/fiio/music/service/h;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/audlabs/vipereffect/main/MainActivity;->mpm:Lcom/fiio/music/service/h;

    return-void
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/main/MainActivity;)Lcom/fiio/music/service/h;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainActivity;->mpm:Lcom/fiio/music/service/h;

    return-object v0
.end method

.method private setUpUi()V
    .locals 3

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 216
    const v1, 0x7f0b001f

    const-string v2, "headset"

    invoke-static {v2}, Lcom/audlabs/vipereffect/main/MainFragment;->newInstance(Ljava/lang/String;)Lcom/audlabs/vipereffect/main/MainFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 219
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 199
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f040009

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/main/MainActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/audlabs/vipereffect/main/a;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/main/a;-><init>(Lcom/audlabs/vipereffect/main/MainActivity;)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 54
    new-instance v1, Lcom/audlabs/vipereffect/main/b;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/main/b;-><init>(Lcom/audlabs/vipereffect/main/MainActivity;)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/ViPEREffect;->setViPERPInit(Landroid/content/Context;)V

    .line 89
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/audlabs/vipereffect/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/audlabs/vipereffect/main/MainActivity;->cb_enableViper:Landroid/widget/CheckBox;

    .line 91
    const-string v0, "kuishe"

    invoke-virtual {p0, v0, v3}, Lcom/audlabs/vipereffect/main/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    const-string v1, "enable_viper"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 97
    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/audlabs/vipereffect/main/MainActivity;->cb_enableViper:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/audlabs/vipereffect/main/MainActivity;->cb_enableViper:Landroid/widget/CheckBox;

    new-instance v2, Lcom/audlabs/vipereffect/main/d;

    invoke-direct {v2, p0}, Lcom/audlabs/vipereffect/main/d;-><init>(Lcom/audlabs/vipereffect/main/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const-string v1, "hasUpdateV4A"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 182
    sget-object v2, Lcom/audlabs/vipereffect/main/MainActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hasUpdateV4A = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-nez v1, :cond_0

    .line 184
    invoke-static {}, Lcom/audlabs/vipereffect/util/StaticEnvironment;->getV4aRootPath()Ljava/lang/String;

    move-result-object v1

    .line 185
    sget-object v2, Lcom/audlabs/vipereffect/main/MainActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sV4aRoot="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Kernel"

    invoke-static {v2, v3, v1}, Lcom/audlabs/vipereffect/util/AssetsUtils;->releaseAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasUpdateV4A"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    :cond_0
    new-instance v0, Lcom/audlabs/vipereffect/payment/PayMent;

    invoke-direct {v0}, Lcom/audlabs/vipereffect/payment/PayMent;-><init>()V

    invoke-virtual {v0, p0, v5}, Lcom/audlabs/vipereffect/payment/PayMent;->init(Landroid/content/Context;Z)V

    .line 191
    invoke-direct {p0}, Lcom/audlabs/vipereffect/main/MainActivity;->setUpUi()V

    .line 193
    const-string v0, "ViPER4Android"

    const-string v1, "onResume(), Binding service ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/audlabs/vipereffect/main/MainActivity;->cb_enableViper:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 225
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainActivity;->mpm:Lcom/fiio/music/service/h;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/MainActivity;->mpm:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->g()V

    .line 230
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "ViPER4Android"

    const-string v1, "Main activity onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 211
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    return-void
.end method
