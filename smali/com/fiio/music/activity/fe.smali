.class final Lcom/fiio/music/activity/fe;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Lcom/fiio/music/util/ae;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fe;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    .line 2967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/fiio/music/util/ac;)V
    .locals 3

    .prologue
    .line 2973
    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/fiio/music/util/bd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2983
    :cond_0
    :goto_0
    return-void

    .line 2976
    :cond_1
    const-string v0, "zxy - - - "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTabAItemClick  : position  :    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2977
    invoke-virtual {p2}, Lcom/fiio/music/util/ac;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2979
    iget-object v1, p0, Lcom/fiio/music/activity/fe;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->playerMusicByCurCursorList(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2982
    iget-object v0, p0, Lcom/fiio/music/activity/fe;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Lcom/fiio/music/util/ac;->b(I)V

    goto :goto_0
.end method
