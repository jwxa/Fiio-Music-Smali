.class final Lcom/fiio/music/activity/cx;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;

.field private final synthetic b:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/cx;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/cx;->b:Lcom/fiio/music/custom/f;

    .line 4227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 4231
    iget-object v0, p0, Lcom/fiio/music/activity/cx;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 4232
    return-void
.end method
