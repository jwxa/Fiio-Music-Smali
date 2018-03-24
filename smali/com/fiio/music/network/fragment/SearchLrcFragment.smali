.class public Lcom/fiio/music/network/fragment/SearchLrcFragment;
.super Landroid/support/v4/app/Fragment;
.source "SearchLrcFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private STYLE_PARAMTER:I

.field private coverUrl:Ljava/lang/String;

.field private lrc:Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

.field private mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/fiio/music/network/fragment/SearchLrcFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->STYLE_PARAMTER:I

    .line 39
    iput-object p1, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->lrc:Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    .line 41
    iput-object p3, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->coverUrl:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    invoke-virtual {p0}, Lcom/fiio/music/network/fragment/SearchLrcFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 83
    const-string v1, "playingSong"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/network/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->lrc:Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    invoke-virtual {v2}, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->getLyric()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/fiio/music/network/c/c;->a(Ljava/lang/String;Lcom/fiio/music/entity/Song;)Ljava/lang/String;

    move-result-object v2

    .line 90
    sget-object v3, Lcom/fiio/music/network/fragment/SearchLrcFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onClick lrcPath = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-eqz v2, :cond_0

    .line 93
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 94
    const-string v4, "playingSong"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    const-string v0, "lrcPath"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v0, "songFilterName"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v0, "coverUrl"

    iget-object v1, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->coverUrl:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Lcom/fiio/music/network/fragment/SearchLrcFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/fiio/music/network/fragment/SearchLrcFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x7f0b0179
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f040070

    const/4 v3, 0x0

    .line 48
    iget-object v0, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->STYLE_PARAMTER:I

    .line 49
    const/4 v0, 0x0

    .line 50
    iget v1, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 51
    invoke-virtual {p1, v4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 65
    :goto_0
    const v0, 0x7f0b0178

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->mListView:Landroid/widget/ListView;

    .line 66
    const v0, 0x7f0b0179

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->mButton:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance v0, Lcom/fiio/music/network/adapter/a;

    invoke-virtual {p0}, Lcom/fiio/music/network/fragment/SearchLrcFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->lrc:Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    invoke-direct {v0, v2, v3}, Lcom/fiio/music/network/adapter/a;-><init>(Landroid/content/Context;Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;)V

    .line 71
    iget-object v2, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-object v1

    .line 53
    :cond_0
    iget v1, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 54
    invoke-virtual {p1, v4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 56
    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 57
    const v0, 0x7f040071

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 59
    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/fiio/music/network/fragment/SearchLrcFragment;->STYLE_PARAMTER:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 60
    const v0, 0x7f040072

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
