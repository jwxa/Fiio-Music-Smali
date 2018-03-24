.class final Lcom/fiio/music/activity/as;
.super Ljava/lang/Object;
.source "EqActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/EqActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/EqActivity;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/fiio/music/activity/as;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 707
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 711
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 3

    .prologue
    const v2, 0x7f0203c2

    const v1, 0x7f0203c0

    .line 714
    if-nez p1, :cond_1

    .line 715
    iget-object v0, p0, Lcom/fiio/music/activity/as;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/EqActivity;->access$0(Lcom/fiio/music/activity/EqActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 716
    iget-object v0, p0, Lcom/fiio/music/activity/as;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/EqActivity;->access$1(Lcom/fiio/music/activity/EqActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/fiio/music/activity/as;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/EqActivity;->access$0(Lcom/fiio/music/activity/EqActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 719
    iget-object v0, p0, Lcom/fiio/music/activity/as;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/EqActivity;->access$1(Lcom/fiio/music/activity/EqActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
