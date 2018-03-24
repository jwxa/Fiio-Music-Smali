.class final Lcom/fiio/music/activity/fd;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Lcom/fiio/music/util/x;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fd;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/fd;->b:Ljava/util/List;

    .line 2946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/fiio/music/util/aa;)V
    .locals 3

    .prologue
    .line 2950
    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/fiio/music/util/bd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2960
    :cond_0
    :goto_0
    return-void

    .line 2953
    :cond_1
    const-string v0, "zxy - - - "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " itemClickListener --- itemId :  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    iget-object v0, p0, Lcom/fiio/music/activity/fd;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fd;->b:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/fiio/music/activity/PlayerMainActivity;->playerMusicByCurListItem(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2958
    invoke-virtual {p2}, Lcom/fiio/music/util/aa;->notifyDataSetChanged()V

    goto :goto_0
.end method
