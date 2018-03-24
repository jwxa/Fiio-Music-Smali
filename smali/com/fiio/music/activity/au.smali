.class final Lcom/fiio/music/activity/au;
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
    iput-object p1, p0, Lcom/fiio/music/activity/au;->a:Lcom/fiio/music/activity/ListMainActivity;

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 882
    const-string v0, "sin"

    const-string v1, "after 2500, go memory play 2"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/fiio/music/activity/au;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$4(Lcom/fiio/music/activity/ListMainActivity;)V

    .line 884
    return-void
.end method
