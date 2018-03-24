.class final Lcom/fiio/music/activity/bu;
.super Ljava/lang/Object;
.source "ListMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/bu;->a:Lcom/fiio/music/activity/ListMainActivity;

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/fiio/music/activity/bu;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$45(Lcom/fiio/music/activity/ListMainActivity;)V

    .line 654
    return-void
.end method
