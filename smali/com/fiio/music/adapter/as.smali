.class final Lcom/fiio/music/adapter/as;
.super Ljava/lang/Object;
.source "ViewPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/ViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/ViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/as;->a:Lcom/fiio/music/adapter/ViewPagerAdapter;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fiio/music/adapter/as;->a:Lcom/fiio/music/adapter/ViewPagerAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ViewPagerAdapter;->access$0(Lcom/fiio/music/adapter/ViewPagerAdapter;)V

    .line 64
    iget-object v0, p0, Lcom/fiio/music/adapter/as;->a:Lcom/fiio/music/adapter/ViewPagerAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ViewPagerAdapter;->access$1(Lcom/fiio/music/adapter/ViewPagerAdapter;)V

    .line 66
    return-void
.end method
