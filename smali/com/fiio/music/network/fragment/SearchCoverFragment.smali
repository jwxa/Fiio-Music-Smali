.class public Lcom/fiio/music/network/fragment/SearchCoverFragment;
.super Landroid/support/v4/app/Fragment;
.source "SearchCoverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private bt_searchcover_use:Landroid/widget/Button;

.field private imgUrl:Ljava/lang/String;

.field private iv_preview:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/fiio/music/network/fragment/SearchCoverFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/network/fragment/SearchCoverFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/fiio/music/network/fragment/SearchCoverFragment;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/fiio/music/network/fragment/SearchCoverFragment;->imgUrl:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 59
    :pswitch_0
    invoke-virtual {p0}, Lcom/fiio/music/network/fragment/SearchCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    const-string v1, "playingSong"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 62
    if-eqz v0, :cond_0

    .line 63
    sget-object v1, Lcom/fiio/music/network/fragment/SearchCoverFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onClick = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/network/fragment/SearchCoverFragment;->imgUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/network/fragment/SearchCoverFragment;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fiio/music/entity/Song;)V

    .line 65
    invoke-virtual {p0}, Lcom/fiio/music/network/fragment/SearchCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 67
    :cond_0
    sget-object v0, Lcom/fiio/music/network/fragment/SearchCoverFragment;->TAG:Ljava/lang/String;

    const-string v1, "song is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/fiio/music/network/fragment/SearchCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x7f0b0160
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 43
    const v0, 0x7f04006c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 44
    const v0, 0x7f0b015f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fiio/music/network/fragment/SearchCoverFragment;->iv_preview:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f0b0160

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fiio/music/network/fragment/SearchCoverFragment;->bt_searchcover_use:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcom/fiio/music/network/fragment/SearchCoverFragment;->bt_searchcover_use:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/fiio/music/network/fragment/SearchCoverFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/aj;->a(Landroid/content/Context;)Lcom/c/a/aj;

    move-result-object v0

    .line 48
    iget-object v2, p0, Lcom/fiio/music/network/fragment/SearchCoverFragment;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/c/a/aj;->a(Ljava/lang/String;)Lcom/c/a/ay;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/c/a/ay;->a()Lcom/c/a/ay;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/c/a/ay;->b()Lcom/c/a/ay;

    move-result-object v0

    .line 51
    iget-object v2, p0, Lcom/fiio/music/network/fragment/SearchCoverFragment;->iv_preview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/c/a/ay;->a(Landroid/widget/ImageView;)V

    .line 52
    return-object v1
.end method
