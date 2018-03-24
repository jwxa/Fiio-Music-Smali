.class final Lcom/fiio/music/activity/ft;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/fs;

.field private final synthetic b:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/fs;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ft;->a:Lcom/fiio/music/activity/fs;

    iput-object p2, p0, Lcom/fiio/music/activity/ft;->b:Lcom/fiio/music/custom/f;

    .line 2123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/fiio/music/activity/ft;->a:Lcom/fiio/music/activity/fs;

    iget-object v0, v0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fiio/music/h/e;->a(Ljava/lang/String;)Z

    .line 2130
    iget-object v0, p0, Lcom/fiio/music/activity/ft;->a:Lcom/fiio/music/activity/fs;

    iget-object v0, v0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/h/e;->f()V

    .line 2132
    iget-object v0, p0, Lcom/fiio/music/activity/ft;->a:Lcom/fiio/music/activity/fs;

    iget-object v0, v0, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/h/e;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2133
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fiio/music/activity/ft;->a:Lcom/fiio/music/activity/fs;

    iget-object v1, v1, Lcom/fiio/music/activity/fs;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/h/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fiio/music/util/k;->a(Ljava/io/File;)V

    .line 2135
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/ft;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 2136
    return-void
.end method
