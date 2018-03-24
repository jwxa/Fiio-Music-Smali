.class final Lcom/fiio/music/activity/dw;
.super Ljava/lang/Object;
.source "MyMusicListActivity.java"

# interfaces
.implements Lcom/fiio/music/satellitemenu/f;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/MyMusicListActivity;

.field private final synthetic b:Lcom/fiio/music/custom/a;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/MyMusicListActivity;Lcom/fiio/music/custom/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/dw;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/dw;->b:Lcom/fiio/music/custom/a;

    .line 1416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/fiio/music/activity/dw;->b:Lcom/fiio/music/custom/a;

    invoke-virtual {v0}, Lcom/fiio/music/custom/a;->dismiss()V

    .line 1420
    return-void
.end method
