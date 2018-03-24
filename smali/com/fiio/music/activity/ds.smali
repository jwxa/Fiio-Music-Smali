.class final Lcom/fiio/music/activity/ds;
.super Ljava/lang/Object;
.source "MyMusicListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/dq;

.field private final synthetic b:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/dq;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ds;->a:Lcom/fiio/music/activity/dq;

    iput-object p2, p0, Lcom/fiio/music/activity/ds;->b:Lcom/fiio/music/custom/f;

    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/fiio/music/activity/ds;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 1213
    return-void
.end method
