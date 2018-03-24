.class public Lcom/fiio/music/activity/SkinSettingActivity;
.super Lcom/fiio/music/activity/SettingActivity;
.source "SkinSettingActivity.java"


# instance fields
.field private a:Landroid/widget/GridView;

.field private b:Lcom/fiio/music/adapter/ImageAdapter;

.field private c:Lcom/fiio/music/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/fiio/music/activity/SettingActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/SkinSettingActivity;)Lcom/fiio/music/adapter/ImageAdapter;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fiio/music/activity/SkinSettingActivity;->b:Lcom/fiio/music/adapter/ImageAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/fiio/music/activity/SkinSettingActivity;)Lcom/fiio/music/c/b;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fiio/music/activity/SkinSettingActivity;->c:Lcom/fiio/music/c/b;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/fiio/music/activity/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/fiio/music/activity/SkinSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 29
    :cond_0
    const v0, 0x7f040126

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SkinSettingActivity;->setContentView(I)V

    .line 30
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->a(Landroid/app/Activity;)V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/fiio/music/activity/SkinSettingActivity;->e:I

    .line 32
    invoke-virtual {p0}, Lcom/fiio/music/activity/SkinSettingActivity;->b()V

    .line 33
    invoke-virtual {p0}, Lcom/fiio/music/activity/SkinSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SkinSettingActivity;->a(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/fiio/music/c/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/fiio/music/c/b;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/fiio/music/activity/SkinSettingActivity;->c:Lcom/fiio/music/c/b;

    .line 37
    new-instance v0, Lcom/fiio/music/adapter/ImageAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/SkinSettingActivity;->c:Lcom/fiio/music/c/b;

    invoke-virtual {v1}, Lcom/fiio/music/c/b;->b()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/fiio/music/adapter/ImageAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/fiio/music/activity/SkinSettingActivity;->b:Lcom/fiio/music/adapter/ImageAdapter;

    .line 38
    const v0, 0x7f0b0351

    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/SkinSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/fiio/music/activity/SkinSettingActivity;->a:Landroid/widget/GridView;

    .line 39
    iget-object v0, p0, Lcom/fiio/music/activity/SkinSettingActivity;->a:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/fiio/music/activity/SkinSettingActivity;->b:Lcom/fiio/music/adapter/ImageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    iget-object v0, p0, Lcom/fiio/music/activity/SkinSettingActivity;->a:Landroid/widget/GridView;

    new-instance v1, Lcom/fiio/music/activity/gu;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/gu;-><init>(Lcom/fiio/music/activity/SkinSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fiio/music/a/c;->b(Landroid/app/Activity;)V

    .line 57
    invoke-super {p0}, Lcom/fiio/music/activity/SettingActivity;->onDestroy()V

    .line 58
    return-void
.end method
