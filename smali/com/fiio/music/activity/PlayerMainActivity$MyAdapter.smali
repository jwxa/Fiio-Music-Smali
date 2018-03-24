.class public Lcom/fiio/music/activity/PlayerMainActivity$MyAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PlayerMainActivity.java"


# instance fields
.field final synthetic this$0:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method public constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 3444
    iput-object p1, p0, Lcom/fiio/music/activity/PlayerMainActivity$MyAdapter;->this$0:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 3460
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 3448
    const v0, 0x7fffffff

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3470
    :try_start_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity$MyAdapter;->this$0:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$76(Lcom/fiio/music/activity/PlayerMainActivity;)[Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity$MyAdapter;->this$0:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$76(Lcom/fiio/music/activity/PlayerMainActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p2, v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3474
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/PlayerMainActivity$MyAdapter;->this$0:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$76(Lcom/fiio/music/activity/PlayerMainActivity;)[Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/PlayerMainActivity$MyAdapter;->this$0:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$76(Lcom/fiio/music/activity/PlayerMainActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p2, v1

    aget-object v0, v0, v1

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3453
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
